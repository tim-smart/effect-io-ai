Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.unsafeGet

Unsafely lookup the value for the specified key in the `HashMap` using the
internal hashing function.

**Signature**

```ts
declare const unsafeGet: { <K1>(key: K1): <K, V>(self: HashMap<K, V>) => V; <K, V, K1>(self: HashMap<K, V>, key: K1): V; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashMap.ts#L169)

Since v2.0.0