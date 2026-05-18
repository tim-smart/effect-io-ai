Package: `@effect/platform-node-shared`<br />
Module: `NodeSocketServer`<br />

## NodeSocketServer.make

Creates a scoped TCP `SocketServer` from a Node `net.Server`, starts
listening with the supplied options, queues pending connections until `run`
is called, and closes the server when the scope ends.

**Signature**

```ts
declare const make: (options: Net.ServerOpts & Net.ListenOptions) => Effect.Effect<{ readonly address: SocketServer.Address; readonly run: <R, E, _>(handler: (socket: Socket.Socket) => Effect.Effect<_, E, R>) => Effect.Effect<never, SocketServer.SocketServerError, R>; }, SocketServer.SocketServerError, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeSocketServer.ts#L59)

Since v4.0.0