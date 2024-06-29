# isTruthy

Tests if a value is `truthy`.

To import and use `isTruthy` from the "Predicate" module:

```ts
import * as Predicate from "effect/Predicate"
// Can be accessed like this
Predicate.isTruthy
```

**Example**

```ts
import { isTruthy } from "effect/Predicate"

assert.deepStrictEqual(isTruthy(1), true)
assert.deepStrictEqual(isTruthy(0), false)
assert.deepStrictEqual(isTruthy(""), false)
```

**Signature**

```ts
export declare const isTruthy: (input: unknown) => boolean
```
