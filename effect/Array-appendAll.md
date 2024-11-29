# appendAll

Concatenates two arrays (or iterables), combining their elements.
If either array is non-empty, the result is also a non-empty array.

To import and use `appendAll` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.appendAll
undefined

**Signature**

```ts
export declare const appendAll: {
  <S extends Iterable<any>, T extends Iterable<any>>(
    that: T
  ): (self: S) => ReadonlyArray.OrNonEmpty<S, T, ReadonlyArray.Infer<S> | ReadonlyArray.Infer<T>>
  <A, B>(self: Iterable<A>, that: NonEmptyReadonlyArray<B>): NonEmptyArray<A | B>
  <A, B>(self: NonEmptyReadonlyArray<A>, that: Iterable<B>): NonEmptyArray<A | B>
  <A, B>(self: Iterable<A>, that: Iterable<B>): Array<A | B>
}
```
