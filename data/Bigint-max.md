# max

Returns the maximum between two `bigint`s.

Part of the `Bigint` module, imported from `@effect/data/Bigint`.

**Example**

```ts
import { max } from '@effect/data/Bigint'

assert.deepStrictEqual(max(2n, 3n), 3n)
```

**Signature**

```ts
export declare const max: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint }
```
