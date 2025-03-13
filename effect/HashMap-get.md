Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.get

Safely lookup the value for the specified key in the `HashMap` using the
internal hashing function.

**Signature**

```ts
declare const get: { <K1>(key: K1): <K, V>(self: HashMap<K, V>) => Option<V>; <K, V, K1>(self: HashMap<K, V>, key: K1): Option<V>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashMap.ts#L146)

Since v2.0.0