# intersperse

Places an element in between members of an `Iterable`.
If the input is a non-empty array, the result is also a non-empty array.

To import and use `intersperse` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.intersperse
```

**Signature**

```ts
export declare const intersperse: {
  <B>(middle: B): <S extends readonly any[] | Iterable<any>>(self: S) => ReadonlyArray.With<S, ReadonlyArray.Infer<S>>
  <A, B>(self: readonly [A, ...A[]], middle: B): [A | B, ...(A | B)[]]
  <A, B>(self: Iterable<A>, middle: B): (A | B)[]
}
```
