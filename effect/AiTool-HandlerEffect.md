Package: `@effect/ai`<br />
Module: `AiTool`<br />

## AiTool.HandlerEffect

A utility type which returns the type of the `Effect` that will be used to
resolve a tool call.

**Signature**

```ts
type HandlerEffect<Tool> = [Tool] extends [
  AiTool<
    infer _Name,
    infer _Parameters,
    infer _Success,
    infer _Failure,
    infer _Requirements
  >
] ? Effect.Effect<
    _Success["Type"],
    AiError | _Failure["Type"],
    _Parameters["Context"] | _Success["Context"] | _Failure["Context"] | _Requirements
  >
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiTool.ts#L197)

Since v1.0.0