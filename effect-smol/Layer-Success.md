Package: `effect`<br />
Module: `Layer`<br />

## Layer.Success

Extracts the service output type (ROut) from a Layer type.

**Signature**

```ts
type Success<T> = T extends Layer<infer _ROut, infer _E, infer _RIn> ? _ROut : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L133)

Since v2.0.0