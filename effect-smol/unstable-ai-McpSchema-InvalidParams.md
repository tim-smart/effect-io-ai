Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.InvalidParams

Represents an MCP/JSON-RPC error for invalid method parameters.

**When to use**

Use to report a request whose method parameters do not match the method
schema.

**Details**

Uses the standard JSON-RPC invalid params code `-32602`.

**Signature**

```ts
declare class InvalidParams
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpSchema.ts#L621)

Since v4.0.0