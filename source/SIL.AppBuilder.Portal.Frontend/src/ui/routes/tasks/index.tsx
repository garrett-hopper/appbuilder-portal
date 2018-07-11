import * as React from 'react';
import { compose } from 'recompose';
import { requireAuth } from '@lib/auth';
import { withData, WithDataProps } from 'react-orbitjs';
import { Container, Table, Icon, Button } from 'semantic-ui-react';
import { Link } from 'react-router-dom';

import { TaskAttributes, TYPE_NAME } from '@data/models/task';

export const pathName = '/tasks';

import './tasks.scss';
import { uuid } from '@orbit/utils';

const prettyMS = require('pretty-ms');

interface Task {
  type: string,
  id: string,
  attributes: TaskAttributes
}

export interface IOwnProps {
  tasks: Task[]
}
export type IProps =
  & IOwnProps
  & WithDataProps

class Tasks extends React.Component<IProps> {

  state = { data: {}, errors: {} };

  //TODO: Remove this method when we collect tasks from the backend
  generateRandomTaks = async () => {

    const products = ['Android APK w/Embedded Audio','HTML website'];
    const status = ['Awaiting Approval','Send / Recieve', 'App Store Preview'];

    await this.props.updateStore(t => t.addRecord({
      type: TYPE_NAME,
      id: uuid(),
      attributes: {
        project: 'Example Bible',
        product: products[Math.floor(Math.random() * (2))],
        status: status[Math.floor(Math.random() * (4))],
        waitTime: Math.floor(Math.random() * (1296001))
      }
    }));
  }

  componentWillMount() {
    this.generateRandomTaks();
  }

  render() {

    const { tasks } = this.props;

    console.log(tasks);

    return (
      <Container className='tasks'>
        <h1 className='page-heading'>My Tasks</h1>
        {
          tasks ?
            <Table>
              <Table.Header>
                <Table.Row>
                  <Table.HeaderCell>Project</Table.HeaderCell>
                  <Table.HeaderCell>Product</Table.HeaderCell>
                  <Table.HeaderCell>Assigned To</Table.HeaderCell>
                  <Table.HeaderCell>Status</Table.HeaderCell>
                  <Table.HeaderCell>Wait Time</Table.HeaderCell>
                  <Table.HeaderCell></Table.HeaderCell>
                </Table.Row>
              </Table.Header>

              <Table.Body>
                {tasks.map((task,index) => {

                  const { project, product, status, waitTime, user } = task.attributes;

                  return (
                    <Table.Row key={index}>
                      <Table.Cell>
                        <Link to={`projects/${task.id}`}>{project}</Link>
                      </Table.Cell>
                      <Table.Cell>
                        <Icon name='android' />
                        <span>{product}</span>
                      </Table.Cell>
                      <Table.Cell>{user ? `${user.name}` : '[unclaimed]'}</Table.Cell>
                      <Table.Cell className='red'>{status}</Table.Cell>
                      <Table.Cell>
                        <span>{prettyMS(waitTime)}</span>
                      </Table.Cell>
                      <Table.Cell>
                        <Button>reasign</Button>
                      </Table.Cell>
                    </Table.Row>
                  );
                })}
              </Table.Body>
            </Table> :
            <div className='empty-table'>
              <h3>No tasks are assigned to you.</h3>
              <p>Tasks that require your attention will appear here.</p>
            </div>
        }
      </Container>
    );
  }
}

const mapRecordsToProps = (ownProps) => {
  return {
    tasks: q => q.findRecords(TYPE_NAME)
  }
}

export default compose(
  requireAuth,
  withData(mapRecordsToProps)
)(Tasks);
