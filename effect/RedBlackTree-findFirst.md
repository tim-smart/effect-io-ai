Package: `effect`<br />
Module: `RedBlackTree`<br />

## RedBlackTree.findFirst

Finds the first value in the tree associated with the specified key, if it exists.

**Signature**

```ts
declare const findFirst: { <K>(key: K): <V>(self: RedBlackTree<K, V>) => Option<V>; <K, V>(self: RedBlackTree<K, V>, key: K): Option<V>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RedBlackTree.ts#L138)

Since v2.0.0