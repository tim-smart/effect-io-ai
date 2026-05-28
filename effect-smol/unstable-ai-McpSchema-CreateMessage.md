Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.CreateMessage

Represents a server request for the client to sample an LLM.

**When to use**

Use when an MCP server needs the client to perform model sampling on its
behalf.

**Details**

The client chooses the model and should ask the user to approve the sampling
request before it begins.

**Signature**

```ts
declare class CreateMessage
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpSchema.ts#L1829)

Since v4.0.0