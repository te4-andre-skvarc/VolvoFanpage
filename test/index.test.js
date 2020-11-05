const hello = require('../server/public/js/main');

// eslint-disable-next-line no-undef
test('Returns Hello World!', () => {
  // eslint-disable-next-line no-undef
  expect(hello()).toBe(1);
});
