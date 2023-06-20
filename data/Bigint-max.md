# max

Returns the maximum between two `bigint`s.

To import and use `max` from the "Bigint" module:

```ts
import * as Bigint from '@effect/data/Bigint'

// Can be accessed like this
Bigint.max
```

**Example**

```ts
import { max } from '@effect/data/Bigint'

assert.deepStrictEqual(max(2n, 3n), 3n)
```

**Signature**

```ts
export declare const max: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint }
```
