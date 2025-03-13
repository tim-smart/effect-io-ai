Package: `effect`<br />
Module: `RedBlackTree`<br />

## RedBlackTree.getAt

Returns the element at the specified index within the tree or `None` if the
specified index does not exist.

**Signature**

```ts
declare const getAt: { (index: number): <K, V>(self: RedBlackTree<K, V>) => Option<[K, V]>; <K, V>(self: RedBlackTree<K, V>, index: number): Option<[K, V]>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RedBlackTree.ts#L158)

Since v2.0.0