# multiply

Provides a multiplication operation on `bigint`s.

Part of the `Bigint` module, imported from `@effect/data/Bigint`.

**Example**

```ts
import { multiply } from '@effect/data/Bigint'

assert.deepStrictEqual(multiply(2n, 3n), 6n)
```

**Signature**

```ts
export declare const multiply: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint }
```
