import * as React from 'react';
import { Switch } from 'react-router-dom';

import { Route } from '~/lib/routing';

import { NotFound } from '@ui/routes/errors';
import { directoryPath } from '@ui/routes/paths';

import IndexRoute from './list';
import ShowRoute, { pathName as showPath } from './show';

export default function DirectoryRoutes() {
  return (
    <Switch>
      <Route exact path={directoryPath} component={IndexRoute} />
      <Route path={showPath} component={ShowRoute} />

      <Route component={NotFound} />
    </Switch>
  );
}
