# isUnknown

A guard that always succeeds.

Part of the `Predicate` module, imported from `@effect/data/Predicate`.

**Example**

```ts
import { isUnknown } from '@effect/data/Predicate'

assert.deepStrictEqual(isUnknown(null), true)
assert.deepStrictEqual(isUnknown(undefined), true)

assert.deepStrictEqual(isUnknown({}), true)
assert.deepStrictEqual(isUnknown([]), true)
```

**Signature**

```ts
export declare const isUnknown: (input: unknown) => input is unknown
```
