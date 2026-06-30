const { calcul } = require('./app');

test('2 + 3 = 5', () => {
  expect(calcul(2, 3)).toBe(5);
});
