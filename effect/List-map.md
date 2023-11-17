# map

Applies the specified mapping function to each element of the list.

To import and use `map` from the "List" module:

```ts
import * as List from "effect/List"
// Can be accessed like this
List.map
```

**Signature**

```ts
export declare const map: {
  <T extends List<any>, B>(f: (a: List.Infer<T>, i: number) => B): (self: T) => List.With<T, B>
  <T extends List<any>, B>(self: T, f: (a: List.Infer<T>, i: number) => B): List.With<T, B>
}
```
