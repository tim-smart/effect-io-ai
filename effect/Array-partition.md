# partition

Separate elements based on a predicate that also exposes the index of the element.

To import and use `partition` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.partition
undefined

**Signature**

```ts
export declare const partition: {
  <A, B extends A>(
    refinement: (a: NoInfer<A>, i: number) => a is B
  ): (self: Iterable<A>) => [excluded: Array<Exclude<A, B>>, satisfying: Array<B>]
  <A>(
    predicate: (a: NoInfer<A>, i: number) => boolean
  ): (self: Iterable<A>) => [excluded: Array<A>, satisfying: Array<A>]
  <A, B extends A>(
    self: Iterable<A>,
    refinement: (a: A, i: number) => a is B
  ): [excluded: Array<Exclude<A, B>>, satisfying: Array<B>]
  <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): [excluded: Array<A>, satisfying: Array<A>]
}
```
