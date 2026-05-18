Package: `effect`<br />
Module: `McpServer`<br />

## McpServer.run

Runs an MCP server over the current `RpcServer.Protocol`.

The server performs initialization and session handling, serves registered
tools, resources, and prompts, and forwards queued server notifications to
initialized clients.

**Signature**

```ts
declare const run: (options: { readonly name: string; readonly version: string; readonly extensions?: Record<`${string}/${string}`, unknown> | undefined; }) => Effect.Effect<never, never, McpServer | RpcServer.Protocol>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpServer.ts#L368)

Since v4.0.0