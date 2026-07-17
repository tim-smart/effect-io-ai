Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.ClientRequestRpcs

RPC group for requests that MCP clients send to the server.

**Details**

The group includes initialization, resource, prompt, tool, logging,
completion, and ping requests, and installs `McpServerClientMiddleware` for
handlers.

**Signature**

```ts
declare class ClientRequestRpcs
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/McpSchema.ts#L2296)

Since v4.0.0