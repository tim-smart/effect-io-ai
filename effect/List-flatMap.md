# flatMap

Applies a function to each element in a list and returns a new list containing the concatenated mapped elements.

To import and use `flatMap` from the "List" module:

```ts
import * as List from "effect/List"
// Can be accessed like this
List.flatMap
```

**Signature**

```ts
export declare const flatMap: {
  <S extends List<any>, T extends List<any>>(
    f: (a: List.Infer<S>, i: number) => T
  ): (self: S) => List.AndNonEmpty<S, T, List.Infer<T>>
  <A, B>(self: Cons<A>, f: (a: A, i: number) => Cons<B>): Cons<B>
  <A, B>(self: List<A>, f: (a: A, i: number) => List<B>): List<B>
}
```
