## fromIterable

Creates a new `RedBlackTree` from an iterable collection of key/value pairs.

**Signature**

```ts
declare const fromIterable: { <B>(ord: Order<B>): <K extends B, V>(entries: Iterable<readonly [K, V]>) => RedBlackTree<K, V>; <K extends B, V, B>(entries: Iterable<readonly [K, V]>, ord: Order<B>): RedBlackTree<K, V>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RedBlackTree.ts#L76)

Since v2.0.0