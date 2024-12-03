# findLast

Finds the last element in an iterable collection that satisfies the given predicate or refinement.
Returns an `Option` containing the found element, or `Option.none` if no element matches.

To import and use `findLast` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.findLast
```

**Example**

```ts
import { Array, Option } from "effect"

const numbers = [1, 2, 3, 4, 5]
const result = Array.findLast(numbers, (n) => n % 2 === 0)
assert.deepStrictEqual(result, Option.some(4))
```

**Signature**

```ts
export declare const findLast: {
  <A, B>(f: (a: NoInfer<A>, i: number) => Option<B>): (self: Iterable<A>) => Option<B>
  <A, B extends A>(refinement: (a: NoInfer<A>, i: number) => a is B): (self: Iterable<A>) => Option<B>
  <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => Option<A>
  <A, B>(self: Iterable<A>, f: (a: A, i: number) => Option<B>): Option<B>
  <A, B extends A>(self: Iterable<A>, refinement: (a: A, i: number) => a is B): Option<B>
  <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): Option<A>
}
```
