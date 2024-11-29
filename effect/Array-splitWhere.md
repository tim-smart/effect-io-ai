# splitWhere

Splits this iterable on the first element that matches this predicate.
Returns a tuple containing two arrays: the first one is before the match, and the second one is from the match onward.

To import and use `splitWhere` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.splitWhere
undefined

**Example**

```ts
import { Array } from "effect"

const numbers = [1, 2, 3, 4, 5]
const result = Array.splitWhere(numbers, (n) => n > 3)
assert.deepStrictEqual(result, [
  [1, 2, 3],
  [4, 5]
])
```

**Signature**

```ts
export declare const splitWhere: {
  <A>(
    predicate: (a: NoInfer<A>, i: number) => boolean
  ): (self: Iterable<A>) => [beforeMatch: Array<A>, fromMatch: Array<A>]
  <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): [beforeMatch: Array<A>, fromMatch: Array<A>]
}
```
