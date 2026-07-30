Package: `effect`<br />
Module: `RedBlackTree`<br />

## RedBlackTree.forEachLessThan

Visit each node of the tree in order with key lower then max.

**Signature**

```ts
declare const forEachLessThan: { <K, V>(max: K, f: (key: K, value: V) => void): (self: RedBlackTree<K, V>) => void; <K, V>(self: RedBlackTree<K, V>, max: K, f: (key: K, value: V) => void): void; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RedBlackTree.ts#L340)

Since v2.0.0