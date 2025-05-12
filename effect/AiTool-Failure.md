Package: `@effect/ai`<br />
Module: `AiTool`<br />

## AiTool.Failure

A utility type to extract the type of the response that an `AiTool` returns
from its handler if it fails.

**Signature**

```ts
type Failure<Tool> = Tool extends AiTool<
  infer _Name,
  infer _Parameters,
  infer _Success,
  infer _Failure,
  infer _Requirements
> ? _Failure["Type"] :
  never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiTool.ts#L297)

Since v1.0.0