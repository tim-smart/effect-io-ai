# dedupeWith

Remove duplicates from am `Iterable` using the provided `isEquivalent` function, keeping the first occurrence of an element.

To import and use `dedupeWith` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from 'effect/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.dedupeWith
```

**Signature**

```ts
export declare const dedupeWith: {
  <A>(isEquivalent: (self: A, that: A) => boolean): (self: Iterable<A>) => A[]
  <A>(self: Iterable<A>, isEquivalent: (self: A, that: A) => boolean): A[]
}
```
