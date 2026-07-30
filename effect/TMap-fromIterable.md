Package: `effect`<br />
Module: `TMap`<br />

## TMap.fromIterable

Creates a new `TMap` from an iterable collection of key/value pairs.

**Signature**

```ts
declare const fromIterable: <K, V>(iterable: Iterable<readonly [K, V]>) => STM.STM<TMap<K, V>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TMap.ts#L141)

Since v2.0.0