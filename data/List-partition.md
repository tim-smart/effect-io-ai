# partition

Partition a list into two lists, where the first list contains all elements
that did not satisfy the specified predicate, and the second list contains
all elements that did satisfy the specified predicate.

Part of the `List` module, imported from `@effect/data/List`.

**Signature**

```ts
export declare const partition: {
  <A>(predicate: Predicate<A>): (self: List<A>) => readonly [List<A>, List<A>]
  <A>(self: List<A>, predicate: Predicate<A>): readonly [List<A>, List<A>]
}
```
