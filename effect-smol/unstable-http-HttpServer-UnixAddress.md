Package: `effect`<br />
Module: `HttpServer`<br />

## HttpServer.UnixAddress

Unix domain socket address for an HTTP server.

**Signature**

```ts
export interface UnixAddress {
  readonly _tag: "UnixAddress"
  readonly path: string
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServer.ts#L88)

Since v4.0.0