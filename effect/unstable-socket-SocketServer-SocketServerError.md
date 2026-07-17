Package: `effect`<br />
Module: `SocketServer`<br />

## SocketServer.SocketServerError

Tagged socket server error that wraps a server error reason and exposes its
cause.

**Signature**

```ts
declare class SocketServerError { constructor(props: {
    readonly reason: SocketServerErrorReason
  }) }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SocketServer.ts#L90)

Since v4.0.0