import * as React from 'react';
import { translate, InjectedTranslateProps as i18nProps } from 'react-i18next';

import { UserAttributes } from '@data/models/user';
import { GroupAttributes } from '@data/models/group';
import GroupDropdown from './dropdown';
import { Link } from 'react-router-dom';

export interface IOwnProps {
  user: JSONAPI<UserAttributes>;
  groups: Array<JSONAPI<GroupAttributes>>;
}

export type IProps =
  & i18nProps
  & IOwnProps;

class Row extends React.Component<IProps> {
  render() {
    const { user: userData, groups, t } = this.props;
    const user = userData.attributes || {} as UserAttributes;

    const firstName = user.givenName || `(${t('profile.firstName')})`;
    const lastName = user.familyName || `(${t('profile.lastName')})`;
    const isLocked = user.isLocked;

    return (
      <tr>
        <td>
          <Link to={`/users/${userData.id}/edit`}>
            {firstName} {lastName}
          </Link>
        </td>
        <td>Roles listed here</td>
        <td>
          Groups Here
          {/* <GroupDropdown
            items={groups.map(g => ({ id: g.id, value: g.attributes.name }))}
            selected={user.groups.map(g => ({ id: g.id, value: g.name }))}
          />
          */}
        </td >
        <td>
          {isLocked ? 'Locked': ''}
        </td>
      </tr >
    );
  }
}

export default translate('translations')(Row);
