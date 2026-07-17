Package: `effect`<br />
Module: `Socket`<br />

## Socket.SocketError

Tagged error that wraps socket read, write, open, and close failures while
preserving the underlying reason.

**Signature**

```ts
declare class SocketError { constructor(props: {
    readonly reason: SocketReadError | SocketWriteError | SocketOpenError | SocketCloseError
  }) }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Socket.ts#L342)

Since v4.0.0