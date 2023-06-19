# sort

Sort the elements of an `Iterable` in increasing order, creating a new `Array`.

Part of the `ReadonlyArray` module, imported from `@effect/data/ReadonlyArray`.

**Signature**

```ts
export declare const sort: {
  <B>(O: order.Order<B>): <A extends B>(self: Iterable<A>) => A[]
  <A extends B, B>(self: Iterable<A>, O: order.Order<B>): A[]
}
```
