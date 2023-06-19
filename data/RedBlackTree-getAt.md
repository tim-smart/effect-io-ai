# getAt

Returns the element at the specified index within the tree or `None` if the
specified index does not exist.

Part of the `RedBlackTree` module, imported from `@effect/data/RedBlackTree`.

**Signature**

```ts
export declare const getAt: {
  (index: number): <K, V>(self: RedBlackTree<K, V>) => Option<readonly [K, V]>
  <K, V>(self: RedBlackTree<K, V>, index: number): Option<readonly [K, V]>
}
```
