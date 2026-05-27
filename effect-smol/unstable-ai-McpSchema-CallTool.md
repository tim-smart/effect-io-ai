Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.CallTool

Used by the client to invoke a tool provided by the server.

**When to use**

Use when a client already knows the tool name and wants the server to execute
it with argument values.

**See**

- `ListTools` for discovering available tools before calling one
- `CallToolResult` for the successful tool-call result shape

**Signature**

```ts
declare class CallTool
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpSchema.ts#L1471)

Since v4.0.0