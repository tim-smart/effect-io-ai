# isBigint

Tests if a value is a `bigint`.

Part of the `Predicate` module, imported from `@effect/data/Predicate`.

**Example**

```ts
import { isBigint } from '@effect/data/Predicate'

assert.deepStrictEqual(isBigint(1n), true)

assert.deepStrictEqual(isBigint(1), false)
```

**Signature**

```ts
export declare const isBigint: (input: unknown) => input is bigint
```
