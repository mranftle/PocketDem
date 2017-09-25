import { PocketDemocracyPage } from './app.po';

describe('pocket-democracy App', () => {
  let page: PocketDemocracyPage;

  beforeEach(() => {
    page = new PocketDemocracyPage();
  });

  it('should display welcome message', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('Welcome to app!!');
  });
});
