Package: `@effect/ai`<br />
Module: `McpServer`<br />

## McpServer.toolkit

Register an AiToolkit with the McpServer.

**Signature**

```ts
declare const toolkit: <Tools extends AiTool.Any>(toolkit: AiToolkit.AiToolkit<Tools>) => Layer.Layer<never, never, AiTool.ToHandler<Tools> | Exclude<AiTool.Context<Tools>, McpServerClient>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/McpServer.ts#L673)

Since v1.0.0