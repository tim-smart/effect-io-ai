Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.InternalError

Represents an MCP/JSON-RPC error for unexpected internal server failures.

**When to use**

Use to report an unexpected server-side failure while handling a valid
request.

**Details**

Uses the standard JSON-RPC internal error code `-32603` and includes
`InternalError.notImplemented` for unimplemented handlers.

**Signature**

```ts
declare class InternalError
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/McpSchema.ts#L626)

Since v4.0.0