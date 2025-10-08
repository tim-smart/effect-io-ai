Package: `@effect/ai`<br />
Module: `Tool`<br />

## Tool.ResultEncoded

A utility type to extract the encoded type of the tool call result whether
it succeeds or fails.

**Signature**

```ts
type ResultEncoded<T> = T extends Tool<
  infer _Name,
  infer _Config,
  infer _Requirements
> ? SuccessEncoded<T> | FailureEncoded<T>
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L704)

Since v1.0.0