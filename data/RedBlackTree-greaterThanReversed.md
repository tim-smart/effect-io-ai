# greaterThanReversed

Returns an iterator that traverse entries in reverse order with keys greater
than the specified key.

Part of the `RedBlackTree` module, imported from `@effect/data/RedBlackTree`.

**Signature**

```ts
export declare const greaterThanReversed: {
  <K>(key: K): <V>(self: RedBlackTree<K, V>) => Iterable<readonly [K, V]>
  <K, V>(self: RedBlackTree<K, V>, key: K): Iterable<readonly [K, V]>
}
```
