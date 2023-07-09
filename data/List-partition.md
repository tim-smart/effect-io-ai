# partition

Partition a list into two lists, where the first list contains all elements
that did not satisfy the specified predicate, and the second list contains
all elements that did satisfy the specified predicate.

To import and use `partition` from the "List" module:

```ts
import * as List from '@effect/data/List'

// Can be accessed like this
List.partition
```

**Signature**

```ts
export declare const partition: {
  <C extends A, B extends A, A = C>(refinement: Refinement<A, B>): (self: List<C>) => [List<Exclude<C, B>>, List<B>]
  <B extends A, A = B>(predicate: (a: A) => boolean): (self: List<B>) => [List<B>, List<B>]
  <C extends A, B extends A, A = C>(self: List<C>, refinement: Refinement<A, B>): [List<Exclude<C, B>>, List<B>]
  <B extends A, A = B>(self: List<B>, predicate: (a: A) => boolean): [List<B>, List<B>]
}
```
