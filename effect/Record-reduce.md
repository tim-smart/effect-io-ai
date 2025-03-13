Package: `effect`<br />
Module: `Record`<br />

## Record.reduce

Reduce a record to a single value by combining its entries with a specified function.

**Signature**

```ts
declare const reduce: { <Z, V, K extends string>(zero: Z, f: (accumulator: Z, value: V, key: K) => Z): (self: ReadonlyRecord<K, V>) => Z; <K extends string, V, Z>(self: ReadonlyRecord<K, V>, zero: Z, f: (accumulator: Z, value: V, key: K) => Z): Z; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L1020)

Since v2.0.0