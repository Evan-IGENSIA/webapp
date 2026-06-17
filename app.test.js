const calcul = require('./app');
test('adds 1 + 2 to equal 3', () => {
  expect(calcul(1, 2)).toBe(3);
});
