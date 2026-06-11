Package: `effect`<br />
Module: `Socket`<br />

## Socket.SocketErrorReason

Union of socket-specific read, write, open, and close error reasons.

**Signature**

```ts
type SocketErrorReason = | SocketReadError
  | SocketWriteError
  | SocketOpenError
  | SocketCloseError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Socket.ts#L329)

Since v4.0.0