Package: `effect`<br />
Module: `McpServer`<br />

## McpServer.layerHttp

Registers a Streamable HTTP MCP endpoint at `options.path`.

**When to use**

Use to expose an MCP server through an existing `HttpRouter`.

**Details**

POST serves JSON-RPC and accepted notification-only requests return `202`.
Unsupported protocol versions return `400`; methods without MCP handlers
return `405`.

**See**

- `layerStdio` for exposing the server over stdio
- `layer` for the base MCP server layer without a transport protocol

**Signature**

```ts
declare const layerHttp: (options: { readonly name: string; readonly version: string; readonly path: HttpRouter.PathInput; readonly extensions?: Record<`${string}/${string}`, unknown> | undefined; }) => Layer.Layer<McpServer | McpServerClient, never, HttpRouter.HttpRouter>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/McpServer.ts#L712)

Since v4.0.0