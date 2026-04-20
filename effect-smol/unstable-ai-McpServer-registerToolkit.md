Package: `effect`<br />
Module: `McpServer`<br />

## McpServer.registerToolkit

Register a `Toolkit` with the `McpServer`.

**Signature**

```ts
declare const registerToolkit: <Tools extends Record<string, Tool.Any>>(toolkit: Toolkit.Toolkit<Tools>) => Effect.Effect<void, never, McpServer | Tool.HandlersFor<Tools> | Exclude<Tool.HandlerServices<Tools>, McpServerClient>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpServer.ts#L605)

Since v4.0.0