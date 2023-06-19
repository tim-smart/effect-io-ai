# isUndefined

Tests if a value is `undefined`.

Part of the `Predicate` module, imported from `@effect/data/Predicate`.

**Example**

```ts
import { isUndefined } from '@effect/data/Predicate'

assert.deepStrictEqual(isUndefined(undefined), true)

assert.deepStrictEqual(isUndefined(null), false)
assert.deepStrictEqual(isUndefined('undefined'), false)
```

**Signature**

```ts
export declare const isUndefined: (input: unknown) => input is undefined
```
