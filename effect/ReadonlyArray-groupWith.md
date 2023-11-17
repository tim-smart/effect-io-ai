# groupWith

Group equal, consecutive elements of a `NonEmptyReadonlyArray` into `NonEmptyArray`s using the provided `isEquivalent` function.

To import and use `groupWith` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.groupWith
```

**Signature**

```ts
export declare const groupWith: {
  <A>(isEquivalent: (self: A, that: A) => boolean): (self: readonly [A, ...A[]]) => [[A, ...A[]], ...[A, ...A[]][]]
  <A>(self: readonly [A, ...A[]], isEquivalent: (self: A, that: A) => boolean): [[A, ...A[]], ...[A, ...A[]][]]
}
```
