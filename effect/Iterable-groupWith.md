# groupWith

Group equal, consecutive elements of an `Iterable` into `NonEmptyArray`s using the provided `isEquivalent` function.

To import and use `groupWith` from the "Iterable" module:

```ts
import * as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.groupWith
```

**Signature**

```ts
export declare const groupWith: {
  <A>(isEquivalent: (self: A, that: A) => boolean): (self: Iterable<A>) => Iterable<[A, ...A[]]>
  <A>(self: Iterable<A>, isEquivalent: (self: A, that: A) => boolean): Iterable<[A, ...A[]]>
}
```
