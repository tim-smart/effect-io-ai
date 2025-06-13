Package: `@effect/ai`<br />
Module: `AiTool`<br />

## AiTool.ParametersSchema

A utility type to extract the schema type of the parameters which an `AiTool`
must be called with.

**Signature**

```ts
type ParametersSchema<Tool> = Tool extends AiTool<
  infer _Name,
  infer _Parameters,
  infer _Success,
  infer _Failure,
  infer _Requirements
> ? _Parameters :
  never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiTool.ts#L279)

Since v1.0.0