Package: `effect`<br />
Module: `Layer`<br />

## Layer.Services

Extracts the service dependencies (RIn) from a Layer type.

**Signature**

```ts
type Services<T> = T extends infer L
  ? L extends Layer<infer _ROut, infer _E, infer _RIn> ? _RIn : never
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L117)

Since v2.0.0