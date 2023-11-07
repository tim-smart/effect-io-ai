# isError

A guard that succeeds when the input is an `Error`.

To import and use `isError` from the "Predicate" module:

```ts
import * as Predicate from 'effect/Predicate'

// Can be accessed like this
Predicate.isError
```

**Example**

```ts
import { isError } from 'effect/Predicate'

assert.deepStrictEqual(isError(new Error()), true)

assert.deepStrictEqual(isError(null), false)
assert.deepStrictEqual(isError({}), false)
```

**Signature**

```ts
export declare const isError: (input: unknown) => input is Error
```
