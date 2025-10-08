Package: `@effect/ai`<br />
Module: `Tool`<br />

## Tool.Success

A utility type to extract the type of the tool call result when it succeeds.

**Signature**

```ts
type Success<T> = T extends Tool<
  infer _Name,
  infer _Config,
  infer _Requirements
> ? Schema.Schema.Type<_Config["success"]>
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L621)

Since v1.0.0