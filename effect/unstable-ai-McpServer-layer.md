Package: `effect`<br />
Module: `McpServer`<br />

## McpServer.layer

Creates a layer that starts an MCP server over an existing
`RpcServer.Protocol` and provides the `McpServer` and `McpServerClient`
services.

**When to use**

Use when you already have a custom or externally provided
`RpcServer.Protocol` and want to start an MCP server as part of a layer
graph.

**Details**

The returned layer forks `run(options)` in the layer scope and merges
`McpServer.layer`, so registration layers can use the `McpServer` service
while the server is running.

**Gotchas**

Unlike `layerStdio` and `layerHttp`, this layer does not install a concrete
transport. The surrounding layer graph must provide `RpcServer.Protocol`.

**See**

- `run` for the effect form used by this layer
- `layerStdio` for a stdio-backed layer that installs the MCP protocol and NDJSON-RPC serialization
- `layerHttp` for an HTTP-backed layer that registers with `HttpRouter` and installs JSON-RPC serialization

**Signature**

```ts
declare const layer: (options: { readonly name: string; readonly version: string; readonly extensions?: Record<`${string}/${string}`, unknown> | undefined; }) => Layer.Layer<McpServer | McpServerClient, never, RpcServer.Protocol>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/McpServer.ts#L560)

Since v4.0.0