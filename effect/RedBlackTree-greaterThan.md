## greaterThan

Returns an iterator that traverse entries in order with keys greater than the
specified key.

**Signature**

```ts
declare const greaterThan: { <K>(key: K): <V>(self: RedBlackTree<K, V>) => Iterable<[K, V]>; <K, V>(self: RedBlackTree<K, V>, key: K): Iterable<[K, V]>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RedBlackTree.ts#L178)

Since v2.0.0