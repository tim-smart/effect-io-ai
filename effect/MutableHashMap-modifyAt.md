## modifyAt

Set or remove the specified key in the `MutableHashMap` using the specified
update function.

**Signature**

```ts
declare const modifyAt: { <K, V>(key: K, f: (value: Option.Option<V>) => Option.Option<V>): (self: MutableHashMap<K, V>) => MutableHashMap<K, V>; <K, V>(self: MutableHashMap<K, V>, key: K, f: (value: Option.Option<V>) => Option.Option<V>): MutableHashMap<K, V>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MutableHashMap.ts#L289)

Since v2.0.0