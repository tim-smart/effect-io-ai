Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.Ping

Represents an MCP ping request used to check whether the peer is still alive.

**When to use**

Use to implement client or server liveness checks.

**Details**

The receiver should respond promptly; otherwise the sender may disconnect.

**Signature**

```ts
declare class Ping
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpSchema.ts#L685)

Since v4.0.0