# findFirst

Returns the first element that satisfies the specified
predicate, or `None` if no such element exists.

To import and use `findFirst` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.findFirst
undefined

**Example**

```ts
import { Array, Option } from "effect"

const numbers = [1, 2, 3, 4, 5]
const result = Array.findFirst(numbers, (x) => x > 3)
assert.deepStrictEqual(result, Option.some(4))
```

**Signature**

```ts
export declare const findFirst: {
  <A, B>(f: (a: NoInfer<A>, i: number) => Option<B>): (self: Iterable<A>) => Option<B>
  <A, B extends A>(refinement: (a: NoInfer<A>, i: number) => a is B): (self: Iterable<A>) => Option<B>
  <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => Option<A>
  <A, B>(self: Iterable<A>, f: (a: A, i: number) => Option<B>): Option<B>
  <A, B extends A>(self: Iterable<A>, refinement: (a: A, i: number) => a is B): Option<B>
  <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): Option<A>
}
```
