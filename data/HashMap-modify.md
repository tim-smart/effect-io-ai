# modify

Updates the value of the specified key within the `HashMap` if it exists.

Part of the `HashMap` module, imported from `@effect/data/HashMap`.

**Signature**

```ts
export declare const modify: {
  <K, V>(key: K, f: (v: V) => V): (self: HashMap<K, V>) => HashMap<K, V>
  <K, V>(self: HashMap<K, V>, key: K, f: (v: V) => V): HashMap<K, V>
}
```
