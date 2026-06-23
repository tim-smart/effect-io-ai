Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.ServerCapabilities

Describes capabilities advertised by an MCP server.

**When to use**

Use to describe which optional MCP features a server supports during
initialization.

**Details**

Known capabilities are represented by this schema, but the capability set is
open and servers may define additional capabilities.

**Signature**

```ts
declare class ServerCapabilities
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpSchema.ts#L380)

Since v4.0.0