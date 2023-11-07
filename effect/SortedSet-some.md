# some

Check if a predicate holds true for some `SortedSet` element.

To import and use `some` from the "SortedSet" module:

```ts
import * as SortedSet from 'effect/SortedSet'

// Can be accessed like this
SortedSet.some
```

**Signature**

```ts
export declare const some: {
  <A>(predicate: Predicate<A>): (self: SortedSet<A>) => boolean
  <A>(self: SortedSet<A>, predicate: Predicate<A>): boolean
}
```
