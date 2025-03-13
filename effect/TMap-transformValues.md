Package: `effect`<br />
Module: `TMap`<br />

## TMap.transformValues

Atomically updates all values using a pure function.

**Signature**

```ts
declare const transformValues: { <V>(f: (value: V) => V): <K>(self: TMap<K, V>) => STM.STM<void>; <K, V>(self: TMap<K, V>, f: (value: V) => V): STM.STM<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TMap.ts#L471)

Since v2.0.0