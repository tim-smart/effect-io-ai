# partition

Partition the values of a `HashSet` using the specified predicate.

If a value matches the predicate, it will be placed into the `HashSet` on the
right side of the resulting `Tuple`, otherwise the value will be placed into
the left side.

To import and use `partition` from the "HashSet" module:

```ts
import * as HashSet from '@effect/data/HashSet'

// Can be accessed like this
HashSet.partition
```

**Signature**

```ts
export declare const partition: {
  <A, B extends A>(f: Refinement<A, B>): (self: HashSet<A>) => readonly [HashSet<A>, HashSet<B>]
  <A>(f: Predicate<A>): (self: HashSet<A>) => readonly [HashSet<A>, HashSet<A>]
  <A, B extends A>(self: HashSet<A>, f: Refinement<A, B>): readonly [HashSet<A>, HashSet<B>]
  <A>(self: HashSet<A>, f: Predicate<A>): readonly [HashSet<A>, HashSet<A>]
}
```