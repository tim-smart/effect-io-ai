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
  <S extends readonly any[] | Iterable<any>>(
    isEquivalent: (self: ReadonlyArray.Infer<S>, that: ReadonlyArray.Infer<S>) => boolean
  ): (self: S) => ReadonlyArray.With<S, ReadonlyArray.Infer<S>>
  <A>(self: readonly [A, ...A[]], isEquivalent: (self: A, that: A) => boolean): [A, ...A[]]
  <A>(self: Iterable<A>, isEquivalent: (self: A, that: A) => boolean): A[]
}
```
