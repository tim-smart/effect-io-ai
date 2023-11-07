# isObject

Tests if a value is an `object`.

To import and use `isObject` from the "Predicate" module:

```ts
import * as Predicate from 'effect/Predicate'

// Can be accessed like this
Predicate.isObject
```

**Example**

```ts
import { isObject } from 'effect/Predicate'

assert.deepStrictEqual(isObject({}), true)
assert.deepStrictEqual(isObject([]), true)

assert.deepStrictEqual(isObject(null), false)
assert.deepStrictEqual(isObject(undefined), false)
```

**Signature**

```ts
export declare const isObject: (input: unknown) => input is object
```
