Package: `@effect/ai`<br />
Module: `AiTool`<br />

## AiTool.Parameters

A utility type to extract the type of the parameters which an `AiTool` must
be called with.

**Signature**

```ts
type Parameters<Tool> = Tool extends AiTool<
  infer _Name,
  infer _Parameters,
  infer _Success,
  infer _Failure,
  infer _Requirements
> ? _Parameters["Type"] :
  never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiTool.ts#L233)

Since v1.0.0