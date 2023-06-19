# isDate

A guard that succeeds when the input is a `Date`.

Part of the `Predicate` module, imported from `@effect/data/Predicate`.

**Example**

```ts
import { isDate } from '@effect/data/Predicate'

assert.deepStrictEqual(isDate(new Date()), true)

assert.deepStrictEqual(isDate(null), false)
assert.deepStrictEqual(isDate({}), false)
```

**Signature**

```ts
export declare const isDate: (input: unknown) => input is Date
```
