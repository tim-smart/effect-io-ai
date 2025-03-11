## transform

Atomically updates all bindings using a pure function.

**Signature**

```ts
declare const transform: { <K, V>(f: (key: K, value: V) => readonly [K, V]): (self: TMap<K, V>) => STM.STM<void>; <K, V>(self: TMap<K, V>, f: (key: K, value: V) => readonly [K, V]): STM.STM<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TMap.ts#L449)

Since v2.0.0