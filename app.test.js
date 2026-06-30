const calcul = require('./app');

test('adds 1 + 2 to equal 3', () => {
  expect(calcul(1, 2)).toBe(3);
});

test('adds 11 + 2 to equal 13', () => {
  expect(calcul(11, 2)).toBe(13);
});
