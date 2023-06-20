# min

Returns the minimum between two `bigint`s.

To import and use `min` from the "Bigint" module:

```ts
import * as Bigint from '@effect/data/Bigint'

// Can be accessed like this
Bigint.min
```

**Example**

```ts
import { min } from '@effect/data/Bigint'

assert.deepStrictEqual(min(2n, 3n), 2n)
```

**Signature**

```ts
export declare const min: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint }
```
