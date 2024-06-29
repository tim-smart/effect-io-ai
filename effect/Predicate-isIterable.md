# isIterable

A guard that succeeds when the input is an `Iterable`.

To import and use `isIterable` from the "Predicate" module:

```ts
import * as Predicate from "effect/Predicate"
// Can be accessed like this
Predicate.isIterable
```

**Example**

```ts
import { isIterable } from "effect/Predicate"

assert.deepStrictEqual(isIterable([]), true)
assert.deepStrictEqual(isIterable(new Set()), true)

assert.deepStrictEqual(isIterable(null), false)
assert.deepStrictEqual(isIterable({}), false)
```

**Signature**

```ts
export declare const isIterable: (input: unknown) => input is Iterable<unknown>
```
