# flatMap

Applies a function to each element in an array and returns a new array containing the concatenated mapped elements.

To import and use `flatMap` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.flatMap
```

**Signature**

```ts
export declare const flatMap: {
  <S extends readonly any[], T extends readonly any[]>(
    f: (a: ReadonlyArray.Infer<S>, i: number) => T
  ): (self: S) => ReadonlyArray.With2<S, T, ReadonlyArray.Infer<T>>
  <A, B>(self: readonly [A, ...A[]], f: (a: A, i: number) => readonly [B, ...B[]]): [B, ...B[]]
  <A, B>(self: readonly A[], f: (a: A, i: number) => readonly B[]): B[]
}
```
