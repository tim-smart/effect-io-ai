# forEach

Applies the specified function to the values of the `HashMap`.

Part of the `HashMap` module, imported from `@effect/data/HashMap`.

**Signature**

```ts
export declare const forEach: {
  <V>(f: (value: V) => void): <K>(self: HashMap<K, V>) => void
  <K, V>(self: HashMap<K, V>, f: (value: V) => void): void
}
```
