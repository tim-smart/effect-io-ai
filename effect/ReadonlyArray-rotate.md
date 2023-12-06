# rotate

Rotate an `Iterable` by `n` steps.
If the input is a non-empty array, the result is also a non-empty array.

To import and use `rotate` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.rotate
```

**Signature**

```ts
export declare const rotate: {
  (n: number): <S extends readonly any[] | Iterable<any>>(self: S) => ReadonlyArray.With<S, ReadonlyArray.Infer<S>>
  <A>(self: readonly [A, ...A[]], n: number): [A, ...A[]]
  <A>(self: Iterable<A>, n: number): A[]
}
```
