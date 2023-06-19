# fromIterable

Constructs a new tree from an iterable of key-value pairs.

Part of the `RedBlackTree` module, imported from `@effect/data/RedBlackTree`.

**Signature**

```ts
export declare const fromIterable: <K, V>(ord: Order<K>) => (entries: Iterable<readonly [K, V]>) => RedBlackTree<K, V>
```
