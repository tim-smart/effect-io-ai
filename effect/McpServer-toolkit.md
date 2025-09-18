Package: `@effect/ai`<br />
Module: `McpServer`<br />

## McpServer.toolkit

Register an AiToolkit with the McpServer.

**Signature**

```ts
declare const toolkit: <Tools extends Record<string, AiTool.Any>>(toolkit: Toolkit.Toolkit<Tools>) => Layer.Layer<never, never, AiTool.HandlersFor<Tools> | Exclude<AiTool.Requirements<Tools>, McpServerClient>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/McpServer.ts#L726)

Since v1.0.0