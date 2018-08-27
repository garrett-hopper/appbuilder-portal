import { useFakeAuthentication, fakeAuth0Id } from 'tests/helpers/index';

export function userInDifferentOrganization(orgId: number) {
  useFakeAuthentication({
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
      { id: 1, type: 'organization-memberships',
        attributes: {},
        relationships: {
          user: { data: { id: 1, type: 'users' } },
          organization: { data: { id: orgId, type: 'organizations' } }
      }},
      { id: 2, type: 'organizations',
        attributes: {},
        relationships: {
          ['organization-memberships']: {
            data: [
              { id: 1, type: 'organization-memberships' }
            ]
          }
        }
      }
    ]
  }, {
    data: [{ type: 'organizations', id: orgId, attributes: {} }],
    included: [
      { id: 1, type: 'organization-memberships',
        attributes: {},
        relationships: {
          user: { data: { id: 1, type: 'users' } },
          organization: { data: { id: orgId, type: 'organizations' } }
        }
      },
    ]
  });
}


export function userInSameOrgDifferentGroup(orgId, groupId) {
  useFakeAuthentication({
    data: {
      id: 1,
      type: 'users',
      attributes: { id: 1, auth0Id: fakeAuth0Id },
      relationships: {
        ['organization-memberships']: {
          data: [
            { id: 1, type: 'organization-memberships' },
          ]
        },
        ['group-memberships']: {
          data: [
            { id: 2, type: 'group-memberships' },
          ]
        }
      }
    },
    included: [
      { id: 1, type: 'organization-memberships',
        attributes: {},
        relationships: {
          user: { data: { id: 1, type: 'users' } },
          organization: { data: { id: orgId, type: 'organizations' } }
      }},
      { id: 2, type: 'group-memberships',
        attributes: {},
        relationships: {
          user: { data: { id: 1, type: 'users' } },
          group: { data: { id: groupId, type: 'group' } }
        }
      }
    ]
  }, {
    data: [{ type: 'organizations', id: orgId, attributes: {} }],
    included: [
      { id: 1, type: 'organization-memberships',
        attributes: {},
        relationships: {
          user: { data: { id: 1, type: 'users' } },
          organization: { data: { id: orgId, type: 'organizations' } }
        }
      },
    ]
  });
}

export function userInSameOrgAndGroup(orgId, groupId) {
  useFakeAuthentication({
    data: {
      id: 1,
      type: 'users',
      attributes: { id: 1, auth0Id: fakeAuth0Id },
      relationships: {
        ['organization-memberships']: {
          data: [
            { id: 1, type: 'organization-memberships' },
          ]
        },
        ['group-memberships']: {
          data: [
            { id: 1, type: 'group-memberships' },
            { id: 2, type: 'group-memberships' },
          ]
        }
      }
    },
    included: [
      { id: 1, type: 'organization-memberships',
        attributes: {},
        relationships: {
          user: { data: { id: 1, type: 'users' } },
          organization: { data: { id: orgId, type: 'organizations' } }
      }},
      { id: 1, type: 'group-memberships',
        attributes: {},
        relationships: {
          user: { data: { id: 1, type: 'users' } },
          group: { data: { id: groupId, type: 'group' } }
        }
      },
      { id: 2, type: 'group-memberships',
        attributes: {},
        relationships: {
          user: { data: { id: 1, type: 'users' } },
          group: { data: { id: groupId + 2, type: 'group' } }
        }
      }
    ]
  }, {
    data: [{ type: 'organizations', id: orgId, attributes: {} }],
    included: [
      { id: 1, type: 'organization-memberships',
        attributes: {},
        relationships: {
          user: { data: { id: 1, type: 'users' } },
          organization: { data: { id: orgId, type: 'organizations' } }
        }
      },
    ]
  });
}
