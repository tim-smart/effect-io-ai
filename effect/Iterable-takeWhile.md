# takeWhile

Calculate the longest initial Iterable for which all element satisfy the specified predicate, creating a new `Iterable`.

To import and use `takeWhile` from the "Iterable" module:

```ts
import * as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.takeWhile
```

**Signature**

```ts
export declare const takeWhile: {
  <A, B extends A>(refinement: (a: NoInfer<A>, i: number) => a is B): (self: Iterable<A>) => Iterable<B>
  <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => Iterable<A>
  <A, B extends A>(self: Iterable<A>, refinement: (a: A, i: number) => a is B): Iterable<B>
  <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): Iterable<A>
}
```
