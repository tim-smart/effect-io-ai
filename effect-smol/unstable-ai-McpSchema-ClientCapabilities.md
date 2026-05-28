Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.ClientCapabilities

Describes capabilities advertised by an MCP client.

**When to use**

Use to describe which optional MCP features a client supports during
initialization.

**Details**

Known capabilities are represented by this schema, but the capability set is
open and clients may define additional capabilities.

**Signature**

```ts
declare class ClientCapabilities
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpSchema.ts#L350)

Since v4.0.0