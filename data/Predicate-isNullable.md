# isNullable

A guard that succeeds when the input is `null` or `undefined`.

Part of the `Predicate` module, imported from `@effect/data/Predicate`.

**Example**

```ts
import { isNullable } from '@effect/data/Predicate'

assert.deepStrictEqual(isNullable(null), true)
assert.deepStrictEqual(isNullable(undefined), true)

assert.deepStrictEqual(isNullable({}), false)
assert.deepStrictEqual(isNullable([]), false)
```

**Signature**

```ts
export declare const isNullable: <A>(input: A) => input is Extract<A, null | undefined>
```
