# every

Check if a predicate holds true for every `HashSet` element.

To import and use `every` from the "HashSet" module:

```ts
import * as HashSet from '@effect/data/HashSet'

// Can be accessed like this
HashSet.every
```

**Signature**

```ts
export declare const every: {
  <A, B extends A>(refinement: Refinement<A, B>): (self: HashSet<A>) => self is HashSet<B>
  <A>(predicate: Predicate<A>): (self: HashSet<A>) => boolean
  <A, B extends A>(self: HashSet<A>, refinement: Refinement<A, B>): self is HashSet<B>
  <A>(self: HashSet<A>, predicate: Predicate<A>): boolean
}
```
