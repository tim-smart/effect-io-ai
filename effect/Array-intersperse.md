# intersperse

Places an element in between members of an `Iterable`.
If the input is a non-empty array, the result is also a non-empty array.

To import and use `intersperse` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.intersperse
```

**Signature**

```ts
export declare const intersperse: {
  <B>(
    middle: B
  ): <S extends readonly any[] | Iterable<any>>(self: S) => ReadonlyArray.With<S, B | ReadonlyArray.Infer<S>>
  <A, B>(self: readonly [A, ...A[]], middle: B): [A | B, ...(A | B)[]]
  <A, B>(self: Iterable<A>, middle: B): (A | B)[]
}
```