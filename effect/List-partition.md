# partition

Partition a list into two lists, where the first list contains all elements
that did not satisfy the specified predicate, and the second list contains
all elements that did satisfy the specified predicate.

To import and use `partition` from the "List" module:

```ts
import * as List from "effect/List"
// Can be accessed like this
List.partition
```

**Signature**

```ts
export declare const partition: {
  <C extends A, B extends A, A = C>(
    refinement: Refinement<A, B>
  ): (self: List<C>) => [excluded: List<Exclude<C, B>>, satisfying: List<B>]
  <B extends A, A = B>(predicate: Predicate<A>): (self: List<B>) => [excluded: List<B>, satisfying: List<B>]
  <A, B extends A>(self: List<A>, refinement: Refinement<A, B>): [excluded: List<Exclude<A, B>>, satisfying: List<B>]
  <A>(self: List<A>, predicate: Predicate<A>): [excluded: List<A>, satisfying: List<A>]
}
```
