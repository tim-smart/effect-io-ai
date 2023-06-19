# isError

A guard that succeeds when the input is an `Error`.

Part of the `Predicate` module, imported from `@effect/data/Predicate`.

**Example**

```ts
import { isError } from '@effect/data/Predicate'

assert.deepStrictEqual(isError(new Error()), true)

assert.deepStrictEqual(isError(null), false)
assert.deepStrictEqual(isError({}), false)
```

**Signature**

```ts
export declare const isError: (input: unknown) => input is Error
```
