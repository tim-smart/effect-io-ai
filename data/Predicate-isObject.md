# isObject

Tests if a value is an `object`.

Part of the `Predicate` module, imported from `@effect/data/Predicate`.

**Example**

```ts
import { isObject } from '@effect/data/Predicate'

assert.deepStrictEqual(isObject({}), true)
assert.deepStrictEqual(isObject([]), true)

assert.deepStrictEqual(isObject(null), false)
assert.deepStrictEqual(isObject(undefined), false)
```

**Signature**

```ts
export declare const isObject: (input: unknown) => input is object
```
