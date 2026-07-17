Package: `effect`<br />
Module: `HttpServerError`<br />

## HttpServerError.HttpServerError

Tagged error for failures that occur while handling an HTTP server request.

**Details**

It wraps a `HttpServerErrorReason`, exposes the associated request and optional
response, and can be converted to an HTTP response through the `Respondable`
protocol.

**Signature**

```ts
declare class HttpServerError { constructor(props: {
    readonly reason: HttpServerErrorReason
  }) }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpServerError.ts#L40)

Since v4.0.0