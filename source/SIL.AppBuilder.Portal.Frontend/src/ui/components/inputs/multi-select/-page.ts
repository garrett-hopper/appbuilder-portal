import {
  isPresent,
  text,
  collection,
  clickable,
  Interactor,
  interactor,
} from '@bigtest/interactor';

class MultiSelect {
  items = collection('[data-test-item]', {
    text: text(),
    isChecked: isPresent('[data-test-item-checkbox].checked'),

    toggle: clickable('[data-test-item-checkbox]'),
  });

  checkedItems = collection('[data-test-item] .checked');

  itemNamed(named: string) {
    const item = this.items().find((p) => p.text.includes(named));

    if (!item) {
      throw new Error(`cannot find multi-select item named: ${named}`);
    }

    return item;
  }

  toggleItem(named: string) {
    return this.when(() => this.itemNamed(named)).do((item) => item.toggle());
  }

  itemsText = collection('[data-test-item-text]');
  isListEmpty = isPresent('[data-test-empty-list]');
  emptyText = text('[data-test-empty-list]');
  isOverlayLoaderVisible = isPresent('[data-test-overlay-loader]');
}

export type TInteractor = MultiSelect & Interactor;
export const MultiSelectInteractor = interactor(MultiSelect) as TInteractor;

export default new (MultiSelectInteractor as any)('[data-test-multi-select]') as TInteractor;
