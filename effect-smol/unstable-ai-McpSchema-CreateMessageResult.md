Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.CreateMessageResult

The client's response to a sampling/create_message request from the server.
The client should inform the user before returning the sampled message, to
allow them to inspect the response (human in the loop) and decide whether to
allow the server to see it.

**Signature**

```ts
declare class CreateMessageResult
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpSchema.ts#L1504)

Since v4.0.0