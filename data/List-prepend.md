# prepend

Prepends the specified element to the beginning of the list.

Part of the `List` module, imported from `@effect/data/List`.

**Signature**

```ts
export declare const prepend: {
  <B>(element: B): <A>(self: List<A>) => Cons<B | A>
  <A, B>(self: List<A>, element: B): Cons<A | B>
}
```
