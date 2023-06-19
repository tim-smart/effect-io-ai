# reduce

Reduce a state over the map entries.

Part of the `RedBlackTree` module, imported from `@effect/data/RedBlackTree`.

**Signature**

```ts
export declare const reduce: {
  <Z, V>(zero: Z, f: (accumulator: Z, value: V) => Z): <K>(self: RedBlackTree<K, V>) => Z
  <Z, K, V>(self: RedBlackTree<K, V>, zero: Z, f: (accumulator: Z, value: V) => Z): Z
}
```
