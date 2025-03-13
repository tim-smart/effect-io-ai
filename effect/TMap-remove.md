Package: `effect`<br />
Module: `TMap`<br />

## TMap.remove

Removes binding for given key.

**Signature**

```ts
declare const remove: { <K>(key: K): <V>(self: TMap<K, V>) => STM.STM<void>; <K, V>(self: TMap<K, V>, key: K): STM.STM<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TMap.ts#L244)

Since v2.0.0