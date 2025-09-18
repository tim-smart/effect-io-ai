Package: `@effect/ai`<br />
Module: `Tool`<br />

## Tool.Failure

A utility type to extract the type of the tool call result when it fails.

**Signature**

```ts
type Failure<T> = T extends Tool<
  infer _Name,
  infer _Config,
  infer _Requirements
> ? Schema.Schema.Type<_Config["failure"]> :
  never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L616)

Since v1.0.0