# mapWithIndex

Maps over the entries of the `HashMap` using the specified function.

Part of the `HashMap` module, imported from `@effect/data/HashMap`.

**Signature**

```ts
export declare const mapWithIndex: {
  <A, V, K>(f: (value: V, key: K) => A): (self: HashMap<K, V>) => HashMap<K, A>
  <K, V, A>(self: HashMap<K, V>, f: (value: V, key: K) => A): HashMap<K, A>
}
```
