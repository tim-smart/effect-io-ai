# map

Applies the specified mapping function to each element of the list.

To import and use `map` from the "List" module:

ts
import \* as List from "effect/List"
// Can be accessed like this
List.map
undefined

**Signature**

```ts
export declare const map: {
  <S extends List<any>, B>(f: (a: List.Infer<S>, i: number) => B): (self: S) => List.With<S, B>
  <S extends List<any>, B>(self: S, f: (a: List.Infer<S>, i: number) => B): List.With<S, B>
}
```
