# dedupeAdjacentWith

Deduplicates adjacent elements that are identical using the provided `isEquivalent` function.

To import and use `dedupeAdjacentWith` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from 'effect/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.dedupeAdjacentWith
```

**Signature**

```ts
export declare const dedupeAdjacentWith: {
  <A>(isEquivalent: (self: A, that: A) => boolean): (self: Iterable<A>) => A[]
  <A>(self: Iterable<A>, isEquivalent: (self: A, that: A) => boolean): A[]
}
```
