Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.InternalError

MCP/JSON-RPC error for unexpected internal server failures.

This error uses the standard internal error code `-32603` and includes
`InternalError.notImplemented` for unimplemented handlers.

**Signature**

```ts
declare class InternalError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpSchema.ts#L539)

Since v4.0.0