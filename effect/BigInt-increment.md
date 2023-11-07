# increment

Returns the result of adding `1n` to a given number.

To import and use `increment` from the "BigInt" module:

```ts
import * as BigInt from 'effect/BigInt'

// Can be accessed like this
BigInt.increment
```

**Example**

```ts
import { increment } from 'effect/BigInt'

assert.deepStrictEqual(increment(2n), 3n)
```

**Signature**

```ts
export declare const increment: (n: bigint) => bigint
```
