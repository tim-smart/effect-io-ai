# isUnknown

A guard that always succeeds.

To import and use `isUnknown` from the "Predicate" module:

```ts
import * as Predicate from "effect/Predicate"
// Can be accessed like this
Predicate.isUnknown
```

**Example**

```ts
import { isUnknown } from "effect/Predicate"

assert.deepStrictEqual(isUnknown(null), true)
assert.deepStrictEqual(isUnknown(undefined), true)

assert.deepStrictEqual(isUnknown({}), true)
assert.deepStrictEqual(isUnknown([]), true)
```

**Signature**

```ts
export declare const isUnknown: (input: unknown) => input is unknown
```
