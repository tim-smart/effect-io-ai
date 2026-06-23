Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.MethodNotFound

Represents an MCP/JSON-RPC error for an unavailable method.

**When to use**

Use to report a JSON-RPC method that does not exist or is not available.

**Details**

Uses the standard JSON-RPC method-not-found code `-32601`.

**Signature**

```ts
declare class MethodNotFound
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpSchema.ts#L583)

Since v4.0.0