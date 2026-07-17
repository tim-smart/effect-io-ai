Package: `effect`<br />
Module: `Layer`<br />

## Layer.Error

Extracts the error type (`E`) from a `Layer` type.

**When to use**

Use to derive a layer construction error type for helper types, wrappers, or
APIs that preserve a layer failure channel.

**See**

- `Success` for extracting the services provided by the same `Layer`
- `Services` for extracting the dependency requirements of the same `Layer`

**Signature**

```ts
type Error<T> = T extends Layer<infer _ROut, infer _E, infer _RIn> ? _E : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L165)

Since v2.0.0