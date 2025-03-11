## forEachGreaterThanEqual

Visit each node of the tree in order with key greater then or equal to max.

**Signature**

```ts
declare const forEachGreaterThanEqual: { <K, V>(min: K, f: (key: K, value: V) => void): (self: RedBlackTree<K, V>) => void; <K, V>(self: RedBlackTree<K, V>, min: K, f: (key: K, value: V) => void): void; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RedBlackTree.ts#L329)

Since v2.0.0