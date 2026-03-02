Package: `effect`<br />
Module: `Layer`<br />

## Layer.Error

Extracts the error type (E) from a Layer type.

**Signature**

```ts
type Error<T> = T extends Layer<infer _ROut, infer _E, infer _RIn> ? _E : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L101)

Since v2.0.0