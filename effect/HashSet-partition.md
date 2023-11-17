# partition

Partition the values of a `HashSet` using the specified predicate.

If a value matches the predicate, it will be placed into the `HashSet` on the
right side of the resulting `Tuple`, otherwise the value will be placed into
the left side.

To import and use `partition` from the "HashSet" module:

```ts
import * as HashSet from "effect/HashSet"
// Can be accessed like this
HashSet.partition
```

**Signature**

```ts
export declare const partition: {
  <C extends A, B extends A, A = C>(
    refinement: Refinement<A, B>
  ): (self: HashSet<C>) => [HashSet<Exclude<C, B>>, HashSet<B>]
  <B extends A, A = B>(predicate: (a: A) => boolean): (self: HashSet<B>) => [HashSet<B>, HashSet<B>]
  <C extends A, B extends A, A = C>(
    self: HashSet<C>,
    refinement: Refinement<A, B>
  ): [HashSet<Exclude<C, B>>, HashSet<B>]
  <B extends A, A = B>(self: HashSet<B>, predicate: (a: A) => boolean): [HashSet<B>, HashSet<B>]
}
```
