## get

Retrieves value associated with given key.

**Signature**

```ts
declare const get: { <K>(key: K): <V>(self: TMap<K, V>) => STM.STM<Option.Option<V>>; <K, V>(self: TMap<K, V>, key: K): STM.STM<Option.Option<V>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TMap.ts#L151)

Since v2.0.0