Package: `effect`<br />
Module: `Tool`<br />

## Tool.ParametersEncoded

A utility type to extract the encoded type of the tool call parameters.

**Signature**

```ts
type ParametersEncoded<T> = T extends Tool<
  infer _Name,
  infer _Config,
  infer _Requirements
> ? _Config["parameters"]["Encoded"]
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L687)

Since v1.0.0