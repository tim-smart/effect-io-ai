Package: `effect`<br />
Module: `McpServer`<br />

## McpServer.toolkit

Register an AiToolkit with the McpServer.

**Signature**

```ts
declare const toolkit: <Tools extends Record<string, Tool.Any>>(toolkit: Toolkit.Toolkit<Tools>) => Layer.Layer<never, never, Tool.HandlersFor<Tools> | Exclude<Tool.HandlerServices<Tools>, McpServerClient>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpServer.ts#L681)

Since v4.0.0