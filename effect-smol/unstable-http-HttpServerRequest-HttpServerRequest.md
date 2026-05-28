Package: `effect`<br />
Module: `HttpServerRequest`<br />

## HttpServerRequest.HttpServerRequest

Server-side representation of an incoming HTTP request.

**Details**

It extends `HttpIncomingMessage` with request metadata, parsed cookies,
multipart accessors, WebSocket upgrade support, and a `modify` method for
creating adjusted request views.

**Signature**

```ts
export interface HttpServerRequest extends HttpIncomingMessage.HttpIncomingMessage<HttpServerError> {
  readonly [TypeId]: typeof TypeId
  readonly source: object
  readonly url: string
  readonly originalUrl: string
  readonly method: HttpMethod
  readonly cookies: ReadonlyRecord<string, string>

  readonly multipart: Effect.Effect<
    Multipart.Persisted,
    Multipart.MultipartError,
    Scope.Scope | FileSystem.FileSystem | Path.Path
  >
  readonly multipartStream: Stream.Stream<Multipart.Part, Multipart.MultipartError>

  readonly upgrade: Effect.Effect<Socket.Socket, HttpServerError>

  readonly modify: (
    options: {
      readonly url?: string
      readonly headers?: Headers.Headers
      readonly remoteAddress?: Option.Option<string>
    }
  ) => HttpServerRequest
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerRequest.ts#L98)

Since v4.0.0