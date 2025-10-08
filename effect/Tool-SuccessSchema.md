Package: `@effect/ai`<br />
Module: `Tool`<br />

## Tool.SuccessSchema

A utility type to extract the schema for the return type of a tool call when
the tool call succeeds.

**Signature**

```ts
type SuccessSchema<T> = T extends Tool<
  infer _Name,
  infer _Config,
  infer _Requirements
> ? _Config["success"]
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L649)

Since v1.0.0