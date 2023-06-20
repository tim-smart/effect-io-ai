# isBigint

Tests if a value is a `bigint`.

To import and use `isBigint` from the "Bigint" module:

```ts
import * as Bigint from '@effect/data/Bigint'

// Can be accessed like this
Bigint.isBigint
```

**Example**

```ts
import { isBigint } from '@effect/data/Bigint'

assert.deepStrictEqual(isBigint(1n), true)
assert.deepStrictEqual(isBigint(1), false)
```

**Signature**

```ts
export declare const isBigint: (u: unknown) => u is bigint
```
