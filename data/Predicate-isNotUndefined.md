# isNotUndefined

Tests if a value is not `undefined`.

Part of the `Predicate` module, imported from `@effect/data/Predicate`.

**Example**

```ts
import { isNotUndefined } from '@effect/data/Predicate'

assert.deepStrictEqual(isNotUndefined(null), true)
assert.deepStrictEqual(isNotUndefined('undefined'), true)

assert.deepStrictEqual(isNotUndefined(undefined), false)
```

**Signature**

```ts
export declare const isNotUndefined: <A>(input: A) => input is Exclude<A, undefined>
```
