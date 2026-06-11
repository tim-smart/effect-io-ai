Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.INVALID_REQUEST_ERROR_CODE

Represents the JSON-RPC error code for requests that are not valid request objects.

**When to use**

Use when building an MCP/JSON-RPC error response for a syntactically parsed
request object that fails request-shape validation.

**Signature**

```ts
declare const INVALID_REQUEST_ERROR_CODE: -32600
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpSchema.ts#L474)

Since v4.0.0