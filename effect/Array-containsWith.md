# containsWith

Returns a function that checks if a `ReadonlyArray` contains a given value using a provided `isEquivalent` function.

To import and use `containsWith` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.containsWith
undefined

**Example**

```ts
import { Array } from "effect"

const numbers = [1, 2, 3, 4]
const isEquivalent = (a: number, b: number) => a === b
const containsNumber = Array.containsWith(isEquivalent)
const result = containsNumber(3)(numbers)
assert.deepStrictEqual(result, true)
```

**Signature**

```ts
export declare const containsWith: <A>(isEquivalent: (self: A, that: A) => boolean) => {
  (a: A): (self: Iterable<A>) => boolean
  (self: Iterable<A>, a: A): boolean
}
```
