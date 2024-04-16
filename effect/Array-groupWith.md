# groupWith

Group equal, consecutive elements of a `NonEmptyReadonlyArray` into `NonEmptyArray`s using the provided `isEquivalent` function.

To import and use `groupWith` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.groupWith
```

**Signature**

```ts
export declare const groupWith: {
  <A>(isEquivalent: (self: A, that: A) => boolean): (self: readonly [A, ...A[]]) => [[A, ...A[]], ...[A, ...A[]][]]
  <A>(self: readonly [A, ...A[]], isEquivalent: (self: A, that: A) => boolean): [[A, ...A[]], ...[A, ...A[]][]]
}
```
