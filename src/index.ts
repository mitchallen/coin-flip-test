/// <reference path="../coin-flip.d.ts" />
import { coinFlip } from '@mitchallen/coin-flip';

const flips = 100;
let heads = 0;
let tails = 0;

for (let i = 0; i < flips; i++) {
  const result = coinFlip();
  if (result === 1) {
    heads++;
  } else {
    tails++;
  }
}

console.log(`Flipped a coin ${flips} times.`);
console.log(`Heads: ${heads}`);
console.log(`Tails: ${tails}`);
