Package: `effect`<br />
Module: `DevToolsServer`<br />

## DevToolsServer.Client

Handle for a connected devtools client.

**Details**

It exposes a queue of non-ping requests received from the socket and a
`send` function for non-pong responses.

**Signature**

```ts
export interface Client {
  readonly queue: Queue.Dequeue<DevToolsSchema.Request.WithoutPing>
  readonly send: (_: DevToolsSchema.Response.WithoutPong) => Effect.Effect<void>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DevToolsServer.ts#L35)

Since v4.0.0