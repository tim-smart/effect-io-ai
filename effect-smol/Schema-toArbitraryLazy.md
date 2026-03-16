Package: `effect`<br />
Module: `Schema`<br />

## Schema.toArbitraryLazy

Derives a `LazyArbitrary` from a schema. The result is memoized so
repeated calls with the same schema are cheap.

Prefer `toArbitrary` when you just need the arbitrary directly.

**Signature**

```ts
declare const toArbitraryLazy: <S extends Top>(schema: S) => LazyArbitrary<S["Type"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L10207)

Since v4.0.0