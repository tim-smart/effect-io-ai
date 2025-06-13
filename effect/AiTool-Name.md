Package: `@effect/ai`<br />
Module: `AiTool`<br />

## AiTool.Name

A utility type to extract the `Name` type from an `AiTool`.

**Signature**

```ts
type Name<Tool> = Tool extends AiTool<
  infer _Name,
  infer _Parameters,
  infer _Success,
  infer _Failure,
  infer _Requirements
> ? _Name :
  never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiTool.ts#L247)

Since v1.0.0