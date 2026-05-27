Package: `effect`<br />
Module: `Layer`<br />

## Layer.Services

Extracts the service requirements (`RIn`) from a `Layer` type.

**When to use**

Use to derive the dependency requirements of a generic or inferred `Layer`
without restating its `RIn` type parameter.

**See**

- `Success` for extracting the services provided by the same `Layer`
- `Error` for extracting the construction failure type from the same `Layer`

**Signature**

```ts
type Services<T> = T extends infer L
  ? L extends Layer<infer _ROut, infer _E, infer _RIn> ? _RIn : never
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L180)

Since v4.0.0