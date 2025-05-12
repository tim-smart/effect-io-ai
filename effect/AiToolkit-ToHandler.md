Package: `@effect/ai`<br />
Module: `AiToolkit`<br />

## AiToolkit.ToHandler

Represents an `AiToolkit` which has been augmented with a handler function
for resolving tool call requests.

**Signature**

```ts
export interface ToHandler<in out Tool extends AiTool.Any> {
  readonly tools: ReadonlyArray<Tool>
  readonly handle: (toolName: AiTool.Name<Tool>, toolParams: AiTool.Parameters<Tool>) => AiTool.HandlerEffect<Tool>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiToolkit.ts#L83)

Since v1.0.0