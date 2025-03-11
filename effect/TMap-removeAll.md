## removeAll

Deletes all entries associated with the specified keys.

**Signature**

```ts
declare const removeAll: { <K>(keys: Iterable<K>): <V>(self: TMap<K, V>) => STM.STM<void>; <K, V>(self: TMap<K, V>, keys: Iterable<K>): STM.STM<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TMap.ts#L255)

Since v2.0.0