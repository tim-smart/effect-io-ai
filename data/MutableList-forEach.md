# forEach

Executes the specified function `f` for each element in the list.

Part of the `MutableList` module, imported from `@effect/data/MutableList`.

**Signature**

```ts
export declare const forEach: {
  <A>(f: (element: A) => void): (self: MutableList<A>) => void
  <A>(self: MutableList<A>, f: (element: A) => void): void
}
```
