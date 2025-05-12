Package: `@effect/ai`<br />
Module: `AiTool`<br />

## AiTool.Context

A utility type to the `Context` type from an `AiTool`.

**Signature**

```ts
type Context<Tool> = Tool extends AiTool<
  infer _Name,
  infer _Parameters,
  infer _Success,
  infer _Failure,
  infer _Requirements
> ? _Parameters["Context"] | _Success["Context"] | _Failure["Context"] | _Requirements :
  never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiTool.ts#L328)

Since v1.0.0