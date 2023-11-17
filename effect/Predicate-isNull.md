# isNull

Tests if a value is `undefined`.

To import and use `isNull` from the "Predicate" module:

```ts
import * as Predicate from "effect/Predicate"
// Can be accessed like this
Predicate.isNull
```

**Example**

```ts
import { isNull } from "effect/Predicate"

assert.deepStrictEqual(isNull(null), true)

assert.deepStrictEqual(isNull(undefined), false)
assert.deepStrictEqual(isNull("null"), false)
```

**Signature**

```ts
export declare const isNull: (input: unknown) => input is null
```
