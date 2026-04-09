Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.CreateMessage

A request from the server to sample an LLM via the client. The client has
full discretion over which model to select. The client should also inform the
user before beginning sampling, to allow them to inspect the request (human
in the loop) and decide whether to approve it.

**Signature**

```ts
declare class CreateMessage
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpSchema.ts#L1526)

Since v4.0.0