## make

Makes a new `TMap` that is initialized with specified values.

**Signature**

```ts
declare const make: <K, V>(...entries: Array<readonly [K, V]>) => STM.STM<TMap<K, V>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TMap.ts#L201)

Since v2.0.0