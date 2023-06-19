# reduce

Reduces the specified state over the values of the `HashMap`.

Part of the `HashMap` module, imported from `@effect/data/HashMap`.

**Signature**

```ts
export declare const reduce: {
  <V, Z>(z: Z, f: (z: Z, v: V) => Z): <K>(self: HashMap<K, V>) => Z
  <K, V, Z>(self: HashMap<K, V>, z: Z, f: (z: Z, v: V) => Z): Z
}
```
