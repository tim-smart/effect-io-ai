Package: `@effect/ai`<br />
Module: `Tool`<br />

## Tool.SuccessEncoded

A utility type to extract the encoded type of the tool call result when
it succeeds.

**Signature**

```ts
type SuccessEncoded<T> = T extends Tool<
  infer _Name,
  infer _Config,
  infer _Requirements
> ? Schema.Schema.Encoded<_Config["success"]> :
  never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L589)

Since v1.0.0