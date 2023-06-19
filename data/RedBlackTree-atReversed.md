# atReversed

Returns an iterator that points to the element at the specified index of the
tree.

**Note**: The iterator will run through elements in reverse order.

Part of the `RedBlackTree` module, imported from `@effect/data/RedBlackTree`.

**Signature**

```ts
export declare const atReversed: {
  (index: number): <K, V>(self: RedBlackTree<K, V>) => Iterable<readonly [K, V]>
  <K, V>(self: RedBlackTree<K, V>, index: number): Iterable<readonly [K, V]>
}
```
