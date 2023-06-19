# subtract

Provides a subtraction operation on `number`s.

Part of the `Number` module, imported from `@effect/data/Number`.

**Example**

```ts
import { subtract } from '@effect/data/Number'

assert.deepStrictEqual(subtract(2, 3), -1)
```

**Signature**

```ts
export declare const subtract: { (that: number): (self: number) => number; (self: number, that: number): number }
```
