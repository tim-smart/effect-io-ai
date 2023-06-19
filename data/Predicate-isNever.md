# isNever

A guard that always fails.

Part of the `Predicate` module, imported from `@effect/data/Predicate`.

**Example**

```ts
import { isNever } from '@effect/data/Predicate'

assert.deepStrictEqual(isNever(null), false)
assert.deepStrictEqual(isNever(undefined), false)
assert.deepStrictEqual(isNever({}), false)
assert.deepStrictEqual(isNever([]), false)
```

**Signature**

```ts
export declare const isNever: (input: unknown) => input is never
```
