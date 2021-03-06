import { describe, it, beforeEach } from '@bigtest/mocha';
import { visit, location } from '@bigtest/react';
import { when } from '@bigtest/convergence';
import { expect, assert } from 'chai';
import {
  setupApplicationTest,
  setupRequestInterceptor,
  useFakeAuthentication,
} from 'tests/helpers/index';
import ProjectTableInteractor from '@ui/components/project-table/__tests__/page';

const page = new ProjectTableInteractor();

describe('Acceptance | Project Directory | Column selector', () => {
  useFakeAuthentication();
  setupApplicationTest();

  beforeEach(function() {
    this.mockGet(200, 'product-definitions', { data: [] });
    this.mockGet(200, 'projects', {
      data: [
        {
          type: 'projects',
          id: '1',
          attributes: {
            name: 'Dummy project',
            'date-archived': null,
            language: 'English',
          },
          relationships: {
            organization: { data: { id: 1, type: 'organizations' } },
            group: { data: { id: 1, type: 'groups' } },
            owner: { data: { id: 1, type: 'users' } },
          },
        },
      ],
      included: [
        { type: 'organizations', id: 1, attributes: { name: 'Dummy organization' } },
        { type: 'groups', id: 1, attributes: { name: 'Some Group' } },
      ],
    });
  });

  describe('navigates to project directory page', () => {
    beforeEach(async function() {
      await visit('/directory');
      await when(() => assert(page.rows().length > 0, `Expected project table to be rendered`));
    });

    it('is in directory page', () => {
      expect(location().pathname).to.equal('/directory');
    });

    describe('Default columns are selected', () => {
      beforeEach(async function() {
        await page.columnSelector.toggle();
      });

      it('opens the column selector', () => {
        expect(page.columnSelector.isOpen).to.equal(true);
      });

      it('default options are selected', () => {
        const items = page.selectedItems();
        const itemsText = items.map((i) => i.text);

        expect(itemsText).to.contain('Organization');
        expect(itemsText).to.contain('Language');
        expect(itemsText).to.contain('Build Version');

        expect(itemsText).to.not.contain('Updated On');
        expect(itemsText).to.not.contain('Owner');
        expect(itemsText).to.not.contain('Group');
        expect(itemsText).to.not.contain('Build Date');
      });

      describe('Add owner column to project table', () => {
        beforeEach(async function() {
          await page.columnSelector.toggleColumn('Owner');
        });

        it('owner column its added to project table', () => {
          const columns = page.columns();
          const columnsText = columns.map((c) => c.text);

          expect(columnsText).to.contain('Owner');
          expect(columnsText).to.contain('fake fake');
        });

        describe('Remove Organization from project table', () => {
          beforeEach(async function() {
            await page.columnSelector.toggleColumn('Organization');
          });

          it('organization column is no longer present', () => {
            const columns = page.columns();
            const columnsText = columns.map((c) => c.text);

            expect(columnsText).to.not.contain('Organization');
            expect(columnsText).to.not.contain('Dummy organization');
          });
        });
      });
    });
  });
});
