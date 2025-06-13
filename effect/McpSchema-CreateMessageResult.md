Package: `@effect/ai`<br />
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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/McpSchema.ts#L1435)

Since v1.0.0