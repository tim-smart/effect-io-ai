Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.forEach

Applies the specified function to the entries of the `HashMap`.

**Signature**

```ts
declare const forEach: { <V, K>(f: (value: V, key: K) => void): (self: HashMap<K, V>) => void; <V, K>(self: HashMap<K, V>, f: (value: V, key: K) => void): void; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashMap.ts#L391)

Since v2.0.0