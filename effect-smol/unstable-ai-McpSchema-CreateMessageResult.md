Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.CreateMessageResult

Represents a client response to an MCP sampling request.

**When to use**

Use to return the message produced by client-side model sampling.

**Details**

The client should let the user inspect the sampled message before returning
it to the server.

**Signature**

```ts
declare class CreateMessageResult
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpSchema.ts#L1783)

Since v4.0.0