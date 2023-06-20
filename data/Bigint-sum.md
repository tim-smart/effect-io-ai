# sum

Provides an addition operation on `bigint`s.

To import and use `sum` from the "Bigint" module:

```ts
import * as Bigint from '@effect/data/Bigint'

// Can be accessed like this
Bigint.sum
```

**Example**

```ts
import { sum } from '@effect/data/Bigint'

assert.deepStrictEqual(sum(2n, 3n), 5n)
```

**Signature**

```ts
export declare const sum: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint }
```
