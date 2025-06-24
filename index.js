"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const coin_flip_1 = __importDefault(require("@mitchallen/coin-flip"));
console.log('Flipping a coin...');
const result = (0, coin_flip_1.default)();
console.log(`Result: ${result}`);
