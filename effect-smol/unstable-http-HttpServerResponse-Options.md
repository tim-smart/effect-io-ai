Package: `effect`<br />
Module: `HttpServerResponse`<br />

## HttpServerResponse.Options

Common options accepted by HTTP server response constructors.

**Signature**

```ts
export interface Options {
  readonly status?: number | undefined
  readonly statusText?: string | undefined
  readonly headers?: Headers.Input | undefined
  readonly cookies?: Cookies.Cookies | undefined
  readonly contentType?: string | undefined
  readonly contentLength?: number | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerResponse.ts#L101)

Since v4.0.0