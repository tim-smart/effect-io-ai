Package: `effect`<br />
Module: `RedBlackTree`<br />

## RedBlackTree.greaterThanEqualReversed

Returns an iterator that traverse entries in reverse order with keys greater
than or equal to the specified key.

**Signature**

```ts
declare const greaterThanEqualReversed: { <K>(key: K): <V>(self: RedBlackTree<K, V>) => Iterable<[K, V]>; <K, V>(self: RedBlackTree<K, V>, key: K): Iterable<[K, V]>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RedBlackTree.ts#L214)

Since v2.0.0