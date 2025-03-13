Package: `effect`<br />
Module: `TMap`<br />

## TMap.set

Stores new binding into the map.

**Signature**

```ts
declare const set: { <K, V>(key: K, value: V): (self: TMap<K, V>) => STM.STM<void>; <K, V>(self: TMap<K, V>, key: K, value: V): STM.STM<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TMap.ts#L338)

Since v2.0.0