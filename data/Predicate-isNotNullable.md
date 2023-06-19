# isNotNullable

A guard that succeeds when the input is not `null` or `undefined`.

Part of the `Predicate` module, imported from `@effect/data/Predicate`.

**Example**

```ts
import { isNotNullable } from '@effect/data/Predicate'

assert.deepStrictEqual(isNotNullable({}), true)
assert.deepStrictEqual(isNotNullable([]), true)

assert.deepStrictEqual(isNotNullable(null), false)
assert.deepStrictEqual(isNotNullable(undefined), false)
```

**Signature**

```ts
export declare const isNotNullable: <A>(input: A) => input is NonNullable<A>
```
