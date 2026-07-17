Package: `effect`<br />
Module: `McpServer`<br />

## McpServer.layerHttp

Registers an HTTP POST JSON-RPC route at `options.path` on the current
`HttpRouter`.

**When to use**

Use to expose an MCP server through an existing `HttpRouter`.

**Details**

This layer composes `layer(options)`, `RpcServer.layerProtocolHttp(options)`,
and `RpcSerialization.layerJsonRpc()`.

**See**

- `layerStdio` for exposing the server over stdio
- `layer` for the base MCP server layer without a transport protocol

**Signature**

```ts
declare const layerHttp: (options: { readonly name: string; readonly version: string; readonly path: HttpRouter.PathInput; readonly extensions?: Record<`${string}/${string}`, unknown> | undefined; }) => Layer.Layer<McpServer | McpServerClient, never, HttpRouter.HttpRouter>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/McpServer.ts#L656)

Since v4.0.0