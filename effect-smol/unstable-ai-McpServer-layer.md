Package: `effect`<br />
Module: `McpServer`<br />

## McpServer.layer

Creates a layer that starts an MCP server over an existing
`RpcServer.Protocol` and provides the `McpServer` and `McpServerClient`
services.

**Signature**

```ts
declare const layer: (options: { readonly name: string; readonly version: string; readonly extensions?: Record<`${string}/${string}`, unknown> | undefined; }) => Layer.Layer<McpServer | McpServerClient, never, RpcServer.Protocol>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpServer.ts#L549)

Since v4.0.0