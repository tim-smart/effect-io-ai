# min

Returns the minimum between two `bigint`s.

Part of the `Bigint` module, imported from `@effect/data/Bigint`.

**Example**

```ts
import { min } from '@effect/data/Bigint'

assert.deepStrictEqual(min(2n, 3n), 2n)
```

**Signature**

```ts
export declare const min: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint }
```
