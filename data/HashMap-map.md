# map

Maps over the values of the `HashMap` using the specified function.

Part of the `HashMap` module, imported from `@effect/data/HashMap`.

**Signature**

```ts
export declare const map: {
  <V, A>(f: (value: V) => A): <K>(self: HashMap<K, V>) => HashMap<K, A>
  <K, V, A>(self: HashMap<K, V>, f: (value: V) => A): HashMap<K, A>
}
```
