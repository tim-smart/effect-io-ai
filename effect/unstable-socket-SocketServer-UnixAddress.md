Package: `effect`<br />
Module: `SocketServer`<br />

## SocketServer.UnixAddress

Unix socket server address identified by a filesystem path.

**Signature**

```ts
export interface UnixAddress {
  readonly _tag: "UnixAddress"
  readonly path: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SocketServer.ts#L144)

Since v4.0.0