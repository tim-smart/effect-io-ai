Package: `effect`<br />
Module: `Layer`<br />

## Layer.Success

Extracts the service output type (`ROut`) from a `Layer` type.

**When to use**

Use to derive the services provided by an existing or generic `Layer` without
restating its `ROut` type parameter.

**See**

- `Error` for extracting the layer construction error type instead
- `Services` for extracting the layer input service requirements instead

**Signature**

```ts
type Success<T> = T extends Layer<infer _ROut, infer _E, infer _RIn> ? _ROut : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L212)

Since v2.0.0