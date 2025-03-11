## findAll

Finds all values in the tree associated with the specified key.

**Signature**

```ts
declare const findAll: { <K>(key: K): <V>(self: RedBlackTree<K, V>) => Chunk<V>; <K, V>(self: RedBlackTree<K, V>, key: K): Chunk<V>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RedBlackTree.ts#L127)

Since v2.0.0