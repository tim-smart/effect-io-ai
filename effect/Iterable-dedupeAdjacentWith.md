# dedupeAdjacentWith

Deduplicates adjacent elements that are identical using the provided `isEquivalent` function.

To import and use `dedupeAdjacentWith` from the "Iterable" module:

```ts
import * as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.dedupeAdjacentWith
```

**Signature**

```ts
export declare const dedupeAdjacentWith: {
  <A>(isEquivalent: (self: A, that: A) => boolean): (self: Iterable<A>) => Iterable<A>
  <A>(self: Iterable<A>, isEquivalent: (self: A, that: A) => boolean): Iterable<A>
}
```
