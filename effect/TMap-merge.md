Package: `effect`<br />
Module: `TMap`<br />

## TMap.merge

If the key is not already associated with a value, stores the provided value,
otherwise merge the existing value with the new one using function `f` and
store the result.

**Signature**

```ts
declare const merge: { <K, V>(key: K, value: V, f: (x: V, y: V) => V): (self: TMap<K, V>) => STM.STM<V>; <K, V>(self: TMap<K, V>, key: K, value: V, f: (x: V, y: V) => V): STM.STM<V>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TMap.ts#L211)

Since v2.0.0