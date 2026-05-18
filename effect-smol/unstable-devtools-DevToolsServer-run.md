Package: `effect`<br />
Module: `DevToolsServer`<br />

## DevToolsServer.run

Runs the devtools socket server.

Each connection is decoded as NDJSON devtools protocol messages, `Ping`
requests are answered with `Pong`, and all other requests are delivered
through the `Client` passed to the handler.

**Signature**

```ts
declare const run: <_, E, R>(handle: (client: Client) => Effect.Effect<_, E, R>) => Effect.Effect<never, SocketServer.SocketServerError, R | SocketServer.SocketServer>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DevToolsServer.ts#L54)

Since v4.0.0