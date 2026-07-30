Package: `effect`<br />
Module: `RedBlackTree`<br />

## RedBlackTree.lessThan

Returns an iterator that traverse entries in order with keys less than the
specified key.

**Signature**

```ts
declare const lessThan: { <K>(key: K): <V>(self: RedBlackTree<K, V>) => Iterable<[K, V]>; <K, V>(self: RedBlackTree<K, V>, key: K): Iterable<[K, V]>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RedBlackTree.ts#L271)

Since v2.0.0