# sum

Provides an addition operation on `bigint`s.

Part of the `Bigint` module, imported from `@effect/data/Bigint`.

**Example**

```ts
import { sum } from '@effect/data/Bigint'

assert.deepStrictEqual(sum(2n, 3n), 5n)
```

**Signature**

```ts
export declare const sum: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint }
```
