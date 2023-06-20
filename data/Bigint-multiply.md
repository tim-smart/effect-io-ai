# multiply

Provides a multiplication operation on `bigint`s.

To import and use `multiply` from the "Bigint" module:

```ts
import * as Bigint from '@effect/data/Bigint'

// Can be accessed like this
Bigint.multiply
```

**Example**

```ts
import { multiply } from '@effect/data/Bigint'

assert.deepStrictEqual(multiply(2n, 3n), 6n)
```

**Signature**

```ts
export declare const multiply: { (that: bigint): (self: bigint) => bigint; (self: bigint, that: bigint): bigint }
```
