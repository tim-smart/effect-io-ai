Package: `@effect/ai`<br />
Module: `Tool`<br />

## Tool.ParametersSchema

A utility type to extract the schema for the parameters which an `Tool`
must be called with.

**Signature**

```ts
type ParametersSchema<T> = T extends Tool<
  infer _Name,
  infer _Config,
  infer _Requirements
> ? _Config["parameters"]
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L608)

Since v1.0.0