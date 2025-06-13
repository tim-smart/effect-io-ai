Package: `@effect/ai`<br />
Module: `McpServer`<br />

## McpServer.registerToolkit

Register an AiToolkit with the McpServer.

**Signature**

```ts
declare const registerToolkit: <Tools extends AiTool.Any>(toolkit: AiToolkit.AiToolkit<Tools>) => Effect.Effect<void, never, McpServer | AiTool.ToHandler<Tools>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/McpServer.ts#L486)

Since v1.0.0