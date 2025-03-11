## at

Returns an iterator that points to the element at the specified index of the
tree.

**Note**: The iterator will run through elements in order.

**Signature**

```ts
declare const at: { (index: number): <K, V>(self: RedBlackTree<K, V>) => Iterable<[K, V]>; <K, V>(self: RedBlackTree<K, V>, index: number): Iterable<[K, V]>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RedBlackTree.ts#L102)

Since v2.0.0