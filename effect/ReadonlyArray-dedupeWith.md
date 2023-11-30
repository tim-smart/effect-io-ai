# dedupeWith

Remove duplicates from an `Iterable` using the provided `isEquivalent` function,
preserving the order of the first occurrence of each element.

To import and use `dedupeWith` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.dedupeWith
```

**Signature**

```ts
export declare const dedupeWith: {
  <A>(
    isEquivalent: (self: A, that: A) => boolean
  ): <T extends readonly any[] | Iterable<any>>(self: T) => ReadonlyArray.With<T, ReadonlyArray.Infer<T>>
  <A>(self: readonly [A, ...A[]], isEquivalent: (self: A, that: A) => boolean): [A, ...A[]]
  <A>(self: Iterable<A>, isEquivalent: (self: A, that: A) => boolean): A[]
}
```
