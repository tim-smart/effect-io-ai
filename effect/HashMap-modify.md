## modify

Updates the value of the specified key within the `HashMap` if it exists.

**Signature**

```ts
declare const modify: { <K, V>(key: K, f: (v: V) => V): (self: HashMap<K, V>) => HashMap<K, V>; <K, V>(self: HashMap<K, V>, key: K, f: (v: V) => V): HashMap<K, V>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashMap.ts#L325)

Since v2.0.0