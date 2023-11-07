# isNotNull

Tests if a value is not `undefined`.

To import and use `isNotNull` from the "Predicate" module:

```ts
import * as Predicate from 'effect/Predicate'

// Can be accessed like this
Predicate.isNotNull
```

**Example**

```ts
import { isNotNull } from 'effect/Predicate'

assert.deepStrictEqual(isNotNull(undefined), true)
assert.deepStrictEqual(isNotNull('null'), true)

assert.deepStrictEqual(isNotNull(null), false)
```

**Signature**

```ts
export declare const isNotNull: <A>(input: A) => input is Exclude<A, null>
```
