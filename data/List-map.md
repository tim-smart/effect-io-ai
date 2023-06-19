# map

Applies the specified mapping function to each element of the list.

Part of the `List` module, imported from `@effect/data/List`.

**Signature**

```ts
export declare const map: {
  <A, B>(f: (a: A) => B): (self: List<A>) => List<B>
  <A, B>(self: List<A>, f: (a: A) => B): List<B>
}
```
