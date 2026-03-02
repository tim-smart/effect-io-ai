Package: `effect`<br />
Module: `Tool`<br />

## Tool.ResultDecodingServices

A utility type to extract the requirements needed to decode the result of
a `Tool` call.

**Signature**

```ts
type ResultDecodingServices<T> = T extends Tool<
  infer _Name,
  infer _Config,
  infer _Requirements
> ? _Config["success"]["DecodingServices"] | _Config["failure"]["DecodingServices"]
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L880)

Since v1.0.0