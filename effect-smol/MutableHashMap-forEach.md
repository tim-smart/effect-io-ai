Package: `effect`<br />
Module: `MutableHashMap`<br />

## MutableHashMap.forEach

Runs a callback for each key-value pair in the `MutableHashMap`.

**When to use**

Use to run a synchronous side-effecting callback for every key-value pair in
an existing mutable map.

**Details**

Iteration follows the backing map's order. The callback receives the value
first and the key second, matching `Map.prototype.forEach`.

**See**

- `keys` for iterating only keys
- `values` for iterating only values

**Signature**

```ts
declare const forEach: { <K, V>(f: (value: V, key: K) => void): (self: MutableHashMap<K, V>) => void; <K, V>(self: MutableHashMap<K, V>, f: (value: V, key: K) => void): void; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableHashMap.ts#L866)

Since v2.0.0