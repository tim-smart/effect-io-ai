Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.hasHash

Checks if the specified key has an entry in the `HashMap` using a custom
hash.

**Signature**

```ts
declare const hasHash: { <K1>(key: K1, hash: number): <K, V>(self: HashMap<K, V>) => boolean; <K, V, K1>(self: HashMap<K, V>, key: K1, hash: number): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashMap.ts#L192)

Since v2.0.0