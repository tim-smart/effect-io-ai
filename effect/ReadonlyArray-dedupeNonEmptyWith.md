# dedupeNonEmptyWith

Remove duplicates from a `NonEmptyReadonlyArray`, keeping the first occurrence of an element using the provided `isEquivalent` function.

To import and use `dedupeNonEmptyWith` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from 'effect/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.dedupeNonEmptyWith
```

**Signature**

```ts
export declare const dedupeNonEmptyWith: {
  <A>(isEquivalent: (self: A, that: A) => boolean): (self: readonly [A, ...A[]]) => [A, ...A[]]
  <A>(self: readonly [A, ...A[]], isEquivalent: (self: A, that: A) => boolean): [A, ...A[]]
}
```
