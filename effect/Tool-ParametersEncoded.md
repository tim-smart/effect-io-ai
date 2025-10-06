Package: `@effect/ai`<br />
Module: `Tool`<br />

## Tool.ParametersEncoded

A utility type to extract the encoded type of the tool call parameters.

**Signature**

```ts
type ParametersEncoded<T> = T extends Tool<
  infer _Name,
  infer _Config,
  infer _Requirements
> ? Schema.Schema.Encoded<_Config["parameters"]>
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L608)

Since v1.0.0