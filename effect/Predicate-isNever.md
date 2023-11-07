# isNever

A guard that always fails.

To import and use `isNever` from the "Predicate" module:

```ts
import * as Predicate from 'effect/Predicate'

// Can be accessed like this
Predicate.isNever
```

**Example**

```ts
import { isNever } from 'effect/Predicate'

assert.deepStrictEqual(isNever(null), false)
assert.deepStrictEqual(isNever(undefined), false)
assert.deepStrictEqual(isNever({}), false)
assert.deepStrictEqual(isNever([]), false)
```

**Signature**

```ts
export declare const isNever: (input: unknown) => input is never
```
