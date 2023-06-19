# isBigint

Tests if a value is a `bigint`.

Part of the `Bigint` module, imported from `@effect/data/Bigint`.

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
