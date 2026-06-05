Package: `@effect/ai`<br />
Module: `Tool`<br />

## Tool.Parameters

A utility type to extract the type of the tool call parameters.

**Signature**

```ts
type Parameters<T> = T extends Tool<
  infer _Name,
  infer _Config,
  infer _Requirements
> ? Schema.Schema.Type<_Config["parameters"]>
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L588)

Since v1.0.0