# partition

Partition the values of a `HashSet` using the specified predicate.

If a value matches the predicate, it will be placed into the `HashSet` on the
right side of the resulting `Tuple`, otherwise the value will be placed into
the left side.

To import and use `partition` from the "HashSet" module:

ts
import \* as HashSet from "effect/HashSet"
// Can be accessed like this
HashSet.partition
undefined

**Signature**

```ts
export declare const partition: {
  <A, B extends A>(
    refinement: Refinement<NoInfer<A>, B>
  ): (self: HashSet<A>) => [excluded: HashSet<Exclude<A, B>>, satisfying: HashSet<B>]
  <A>(predicate: Predicate<NoInfer<A>>): (self: HashSet<A>) => [excluded: HashSet<A>, satisfying: HashSet<A>]
  <A, B extends A>(
    self: HashSet<A>,
    refinement: Refinement<A, B>
  ): [excluded: HashSet<Exclude<A, B>>, satisfying: HashSet<B>]
  <A>(self: HashSet<A>, predicate: Predicate<A>): [excluded: HashSet<A>, satisfying: HashSet<A>]
}
```
