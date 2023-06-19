# isNotNull

Tests if a value is not `undefined`.

Part of the `Predicate` module, imported from `@effect/data/Predicate`.

**Example**

```ts
import { isNotNull } from '@effect/data/Predicate'

assert.deepStrictEqual(isNotNull(undefined), true)
assert.deepStrictEqual(isNotNull('null'), true)

assert.deepStrictEqual(isNotNull(null), false)
```

**Signature**

```ts
export declare const isNotNull: <A>(input: A) => input is Exclude<A, null>
```
