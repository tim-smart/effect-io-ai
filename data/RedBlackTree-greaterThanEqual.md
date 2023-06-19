# greaterThanEqual

Returns an iterator that traverse entries in order with keys greater than or
equal to the specified key.

Part of the `RedBlackTree` module, imported from `@effect/data/RedBlackTree`.

**Signature**

```ts
export declare const greaterThanEqual: {
  <K>(key: K): <V>(self: RedBlackTree<K, V>) => Iterable<readonly [K, V]>
  <K, V>(self: RedBlackTree<K, V>, key: K): Iterable<readonly [K, V]>
}
```
