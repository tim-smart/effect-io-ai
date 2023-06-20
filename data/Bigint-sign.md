# sign

Determines the sign of a given `bigint`.

To import and use `sign` from the "Bigint" module:

```ts
import * as Bigint from '@effect/data/Bigint'

// Can be accessed like this
Bigint.sign
```

**Example**

```ts
import { sign } from '@effect/data/Bigint'

assert.deepStrictEqual(sign(-5n), -1)
assert.deepStrictEqual(sign(0n), 0)
assert.deepStrictEqual(sign(5n), 1)
```

**Signature**

```ts
export declare const sign: (n: bigint) => Ordering
```
