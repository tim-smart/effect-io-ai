# every

Check if a predicate holds true for every `SortedSet` element.

To import and use `every` from the "SortedSet" module:

```ts
import * as SortedSet from 'effect/SortedSet'

// Can be accessed like this
SortedSet.every
```

**Signature**

```ts
export declare const every: {
  <A, B extends A>(refinement: Refinement<A, B>): (self: SortedSet<A>) => self is SortedSet<B>
  <A>(predicate: Predicate<A>): (self: SortedSet<A>) => boolean
  <A, B extends A>(self: SortedSet<A>, refinement: Refinement<A, B>): self is SortedSet<B>
  <A>(self: SortedSet<A>, predicate: Predicate<A>): boolean
}
```
