Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.getHash

Lookup the value for the specified key in the `HashMap` using a custom hash.

**Signature**

```ts
declare const getHash: { <K1 extends K, K>(key: K1, hash: number): <V>(self: HashMap<K, V>) => Option<V>; <K1 extends K, K, V>(self: HashMap<K, V>, key: K1, hash: number): Option<V>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashMap.ts#L157)

Since v2.0.0