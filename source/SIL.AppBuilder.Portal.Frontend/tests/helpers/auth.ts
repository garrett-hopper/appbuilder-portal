import { beforeEach, afterEach } from '@bigtest/mocha';
import { expect } from 'chai';

import { fakeAuth0JWT, fakeAuth0Id } from './jwt';
import { setToken, deleteToken, isLoggedIn } from '@lib/auth0';
import { respondWithJsonApi } from './request-intercepting/jsonapi';

// this requires the request interceptor
export function useFakeAuthentication() {
  beforeEach(function() {
    setToken(fakeAuth0JWT());

    expect(isLoggedIn()).to.eq(true, 'user should be logged in, but is unauthenticated');

    const { server } = this.polly;

    server.namespace('/api', () => {
      server.get('/organizations')
        .intercept(respondWithJsonApi(200, {
          data: [{
            type: 'organizations',
            id: 1,
            attributes: {}
          }],
          included: [
            {
              id: 1,
              type: 'organization-memberships',
              attributes: {},
              relationships: {
                user: { data: { id: 1, type: 'users' } },
                organization: { data: { id: 1, type: 'organizations' } }
              }
            },
            {
              id: 1,
              type: 'groups' ,
              attributes: { name: 'Some Group' },
              relationships: {
                organization: { data: { id: 1, type: 'organizations' } }
              }
            }
          ]
      }));

      server.get('/users/current-user')
        .intercept(respondWithJsonApi(200, {
        data: {
          id: 1,
          type: 'users',
          attributes: { id: 1, auth0Id: fakeAuth0Id },
          relationships: {
            ['organization-memberships']: {
              data: [
                { id: 1, type: 'organization-memberships' },
              ]
            }
          }
        },
        included: [
          {
            id: 1,
            type: 'organization-memberships',
            attributes: {},
            relationships: {
              user: { data: { id: 1, type: 'users' } },
              organization: { data: { id: 1, type: 'organizations' } }
            }
          }
        ]
      }));
    });
  });

  afterEach(function() {
    deleteToken();

    expect(isLoggedIn()).to.eq(false, 'user should be logged out, but is not');
  });
}
