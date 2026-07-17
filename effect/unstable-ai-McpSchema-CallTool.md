Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.CallTool

Represents a client request to invoke a tool provided by the server.

**When to use**

Use when you need to represent a client request that already knows the tool
name and asks the server to execute it with argument values.

**See**

- `ListTools` for discovering available tools before calling one
- `CallToolResult` for the successful tool-call result shape

**Signature**

```ts
declare class CallTool
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/McpSchema.ts#L1552)

Since v4.0.0