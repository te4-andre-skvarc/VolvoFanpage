const hello = require('../server/public/src/main');

// eslint-disable-next-line no-undef
test('Returns Hello World!', () => {
  // eslint-disable-next-line no-undef
  expect(hello()).toBe(1);
});
