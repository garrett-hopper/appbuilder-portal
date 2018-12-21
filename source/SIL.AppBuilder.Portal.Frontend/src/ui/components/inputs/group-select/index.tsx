import { compose } from 'recompose';

import Display from './display';
import { withCurrentUser } from '@data/containers/with-current-user';
import { withTranslations } from '@lib/i18n';
import { withData } from './with-data';
import { withCurrentOrganization } from '@data/containers/with-current-organization';

export default compose(
  withCurrentUser(),
  withCurrentOrganization,
  withData,
  withTranslations,
)(Display);
