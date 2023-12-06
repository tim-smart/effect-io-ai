# fromIterable

Creates a new `SortedSet` from an iterable collection of values.

To import and use `fromIterable` from the "SortedSet" module:

```ts
import * as SortedSet from "effect/SortedSet"
// Can be accessed like this
SortedSet.fromIterable
```

**Signature**

```ts
export declare const fromIterable: {
  <B>(ord: Order<B>): <A extends B>(iterable: Iterable<A>) => SortedSet<A>
  <A extends B, B>(iterable: Iterable<A>, ord: Order<B>): SortedSet<A>
}
```
