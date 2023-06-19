# isNull

Tests if a value is `undefined`.

Part of the `Predicate` module, imported from `@effect/data/Predicate`.

**Example**

```ts
import { isNull } from '@effect/data/Predicate'

assert.deepStrictEqual(isNull(null), true)

assert.deepStrictEqual(isNull(undefined), false)
assert.deepStrictEqual(isNull('null'), false)
```

**Signature**

```ts
export declare const isNull: (input: unknown) => input is null
```
