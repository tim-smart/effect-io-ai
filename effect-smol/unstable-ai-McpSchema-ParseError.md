Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.ParseError

Represents an MCP/JSON-RPC error for invalid JSON that could not be parsed.

**When to use**

Use to report a JSON parse failure before a valid JSON-RPC request object is
available.

**Details**

Uses the standard JSON-RPC parse error code `-32700`.

**Signature**

```ts
declare class ParseError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpSchema.ts#L542)

Since v4.0.0