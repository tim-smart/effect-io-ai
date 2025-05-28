Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.reduce

Reduces the specified state over the entries of the `HashMap`.

**Signature**

```ts
declare const reduce: { <Z, V, K>(zero: Z, f: (accumulator: Z, value: V, key: K) => Z): (self: HashMap<K, V>) => Z; <K, V, Z>(self: HashMap<K, V>, zero: Z, f: (accumulator: Z, value: V, key: K) => Z): Z; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashMap.ts#L423)

Since v2.0.0