# isRegExp

Tests if a value is a `RegExp`.

To import and use `isRegExp` from the "Predicate" module:

ts
import \* as Predicate from "effect/Predicate"
// Can be accessed like this
Predicate.isRegExp
undefined

**Example**

```ts
import { Predicate } from "effect"

assert.deepStrictEqual(Predicate.isRegExp(/a/), true)
assert.deepStrictEqual(Predicate.isRegExp("a"), false)
```

**Signature**

```ts
export declare const isRegExp: (input: unknown) => input is RegExp
```
