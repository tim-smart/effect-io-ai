# flatMap

Applies a function to each element in an array and returns a new array containing the concatenated mapped elements.

To import and use `flatMap` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.flatMap
undefined

**Signature**

```ts
export declare const flatMap: {
  <S extends ReadonlyArray<any>, T extends ReadonlyArray<any>>(
    f: (a: ReadonlyArray.Infer<S>, i: number) => T
  ): (self: S) => ReadonlyArray.AndNonEmpty<S, T, ReadonlyArray.Infer<T>>
  <A, B>(self: NonEmptyReadonlyArray<A>, f: (a: A, i: number) => NonEmptyReadonlyArray<B>): NonEmptyArray<B>
  <A, B>(self: ReadonlyArray<A>, f: (a: A, i: number) => ReadonlyArray<B>): Array<B>
}
```
