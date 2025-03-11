## forEach

Execute the specified function for each node of the tree, in order.

**Signature**

```ts
declare const forEach: { <K, V>(f: (key: K, value: V) => void): (self: RedBlackTree<K, V>) => void; <K, V>(self: RedBlackTree<K, V>, f: (key: K, value: V) => void): void; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RedBlackTree.ts#L318)

Since v2.0.0