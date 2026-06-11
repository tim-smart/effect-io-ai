Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.METHOD_NOT_FOUND_ERROR_CODE

Represents the JSON-RPC error code for requests whose method does not exist or is not
available.

**When to use**

Use when building an MCP/JSON-RPC error response for a request whose
`method` is unknown or unavailable.

**Signature**

```ts
declare const METHOD_NOT_FOUND_ERROR_CODE: -32601
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpSchema.ts#L487)

Since v4.0.0