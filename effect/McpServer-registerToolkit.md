Package: `@effect/ai`<br />
Module: `McpServer`<br />

## McpServer.registerToolkit

Register an AiToolkit with the McpServer.

**Signature**

```ts
declare const registerToolkit: <Tools extends Record<string, AiTool.Any>>(toolkit: Toolkit.Toolkit<Tools>) => Effect.Effect<void, never, McpServer | AiTool.HandlersFor<Tools> | Exclude<AiTool.Requirements<Tools>, McpServerClient>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/McpServer.ts#L649)

Since v1.0.0