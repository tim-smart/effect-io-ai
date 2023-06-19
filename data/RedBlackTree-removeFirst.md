# removeFirst

Removes the entry with the specified key, if it exists.

Part of the `RedBlackTree` module, imported from `@effect/data/RedBlackTree`.

**Signature**

```ts
export declare const removeFirst: {
  <K>(key: K): <V>(self: RedBlackTree<K, V>) => RedBlackTree<K, V>
  <K, V>(self: RedBlackTree<K, V>, key: K): RedBlackTree<K, V>
}
```
