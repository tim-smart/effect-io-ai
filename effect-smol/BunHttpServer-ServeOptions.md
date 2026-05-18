Package: `@effect/platform-bun`<br />
Module: `BunHttpServer`<br />

## BunHttpServer.ServeOptions

Bun serve options accepted by the HTTP server, extended with typed route definitions.

**Signature**

```ts
type ServeOptions<R> = & (
    | Bun.Serve.UnixServeOptions<WebSocketContext>
    | Bun.Serve.HostnamePortServeOptions<WebSocketContext>
  )
  & { readonly routes?: Bun.Serve.Routes<WebSocketContext, R> }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-bun/src/BunHttpServer.ts#L83)

Since v4.0.0