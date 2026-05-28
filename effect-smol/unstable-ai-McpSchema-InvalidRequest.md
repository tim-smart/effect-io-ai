Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.InvalidRequest

Represents an MCP/JSON-RPC error for a request object that is not valid.

**When to use**

Use to report a syntactically parsed JSON-RPC request that is not a valid
request object.

**Details**

Uses the standard JSON-RPC invalid request code `-32600`.

**Signature**

```ts
declare class InvalidRequest
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpSchema.ts#L578)

Since v4.0.0