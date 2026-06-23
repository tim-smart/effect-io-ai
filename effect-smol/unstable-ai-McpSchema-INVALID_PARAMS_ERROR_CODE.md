Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.INVALID_PARAMS_ERROR_CODE

Represents the JSON-RPC error code for invalid method parameters.

**When to use**

Use when building an MCP/JSON-RPC error response for decoded request
parameters that fail method-specific validation.

**Signature**

```ts
declare const INVALID_PARAMS_ERROR_CODE: -32602
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpSchema.ts#L501)

Since v4.0.0