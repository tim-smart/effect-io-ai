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
  <A>(predicate: Predicate<A>): (self: List<A>) => readonly [List<A>, List<A>]
  <A>(self: List<A>, predicate: Predicate<A>): readonly [List<A>, List<A>]
}
```
