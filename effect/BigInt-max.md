# max

Returns the maximum between two `bigint`s.

To import and use `max` from the "BigInt" module:

```ts
import * as BigInt from 'effect/BigInt'

// Can be accessed like this
BigInt.max
```

**Example**

```ts
import { max } from 'effect/BigInt'

assert.deepStrictEqual(max(2n, 3n), 3n)
```

**Signature**

```ts
export declare const max: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint }
```
