# forEach

Applies the specified function to each element of the list.

Part of the `List` module, imported from `@effect/data/List`.

**Signature**

```ts
export declare const forEach: {
  <A, B>(f: (a: A) => B): (self: List<A>) => void
  <A, B>(self: List<A>, f: (a: A) => B): void
}
```
