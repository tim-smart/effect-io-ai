Package: `effect`<br />
Module: `Schema`<br />

## Schema.toArbitraryLazy

Derives a `LazyArbitrary` from a schema. The result is memoized so
repeated calls with the same schema are cheap.

**Details**

Prefer `toArbitrary` when you need the arbitrary directly, or when you
want derivation diagnostics via `{ report: true }`. Unsupported schema
nodes, impossible constraints, invalid candidates, and recursive schemas
without a finite terminal path fail immediately.

**Signature**

```ts
declare const toArbitraryLazy: <S extends Constraint>(schema: S) => LazyArbitrary<S["Type"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L12983)

Since v4.0.0