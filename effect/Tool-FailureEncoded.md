Package: `@effect/ai`<br />
Module: `Tool`<br />

## Tool.FailureEncoded

A utility type to extract the encoded type of the tool call result when
it fails.

**Signature**

```ts
type FailureEncoded<T> = T extends Tool<
  infer _Name,
  infer _Config,
  infer _Requirements
> ? Schema.Schema.Encoded<_Config["failure"]>
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L690)

Since v1.0.0