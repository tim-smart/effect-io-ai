Package: `effect`<br />
Module: `Tool`<br />

## Tool.Parameters

A utility type to extract the type of the tool call parameters.

**Signature**

```ts
type Parameters<T> = T extends Tool<
  infer _Name,
  infer _Config,
  infer _Requirements
> ? _Config["parameters"]["Type"]
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L674)

Since v1.0.0