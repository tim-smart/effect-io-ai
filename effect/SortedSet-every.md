# every

Check if a predicate holds true for every `SortedSet` element.

To import and use `every` from the "SortedSet" module:

```ts
import * as SortedSet from "effect/SortedSet"
// Can be accessed like this
SortedSet.every
```

**Signature**

```ts
export declare const every: {
  <A>(predicate: Predicate<A>): (self: SortedSet<A>) => boolean
  <A>(self: SortedSet<A>, predicate: Predicate<A>): boolean
}
```
