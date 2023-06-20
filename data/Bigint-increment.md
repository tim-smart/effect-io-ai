# increment

Returns the result of adding `1n` to a given number.

To import and use `increment` from the "Bigint" module:

```ts
import * as Bigint from '@effect/data/Bigint'

// Can be accessed like this
Bigint.increment
```

**Example**

```ts
import { increment } from '@effect/data/Bigint'

assert.deepStrictEqual(increment(2n), 3n)
```

**Signature**

```ts
export declare const increment: (n: bigint) => bigint
```
