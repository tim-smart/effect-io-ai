Package: `effect`<br />
Module: `Tool`<br />

## Tool.ResultEncodingServices

A utility type to extract the requirements needed to encode the result of
a `Tool` call.

**Signature**

```ts
type ResultEncodingServices<T> = T extends Tool<
  infer _Name,
  infer _Config,
  infer _Requirements
> ? _Config["success"]["EncodingServices"] | _Config["failure"]["EncodingServices"]
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L866)

Since v1.0.0