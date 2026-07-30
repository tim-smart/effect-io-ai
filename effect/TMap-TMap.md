Package: `effect`<br />
Module: `TMap`<br />

## TMap.TMap

Transactional map implemented on top of `TRef` and `TArray`. Resolves
conflicts via chaining.

**Signature**

```ts
export interface TMap<in out K, in out V> extends TMap.Variance<K, V> {}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TMap.ts#L33)

Since v2.0.0