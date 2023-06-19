# subtract

Provides a subtraction operation on `bigint`s.

Part of the `Bigint` module, imported from `@effect/data/Bigint`.

**Example**

```ts
import { subtract } from '@effect/data/Bigint'

assert.deepStrictEqual(subtract(2n, 3n), -1n)
```

**Signature**

```ts
export declare const subtract: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint }
```
