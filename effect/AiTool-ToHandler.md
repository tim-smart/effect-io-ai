Package: `@effect/ai`<br />
Module: `AiTool`<br />

## AiTool.ToHandler

A utility type which returns the handler type for an `AiTool`.

**Signature**

```ts
type ToHandler<Tool> = Tool extends AiTool<
  infer _Name,
  infer _Parameters,
  infer _Success,
  infer _Failure,
  infer _Requirements
> ? Handler<_Name> :
  never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiTool.ts#L377)

Since v1.0.0