# takeWhile

Calculate the longest initial subarray for which all element satisfy the specified predicate, creating a new `Array`.

To import and use `takeWhile` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.takeWhile
```

**Signature**

```ts
export declare const takeWhile: {
  <A, B extends A>(refinement: (a: NoInfer<A>, i: number) => a is B): (self: Iterable<A>) => B[]
  <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => A[]
  <A, B extends A>(self: Iterable<A>, refinement: (a: A, i: number) => a is B): B[]
  <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): A[]
}
```
