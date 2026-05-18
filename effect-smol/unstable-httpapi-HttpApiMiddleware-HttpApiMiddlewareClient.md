Package: `effect`<br />
Module: `HttpApiMiddleware`<br />

## HttpApiMiddleware.HttpApiMiddlewareClient

Client-side middleware function for generated HTTP API clients.

It receives endpoint/group metadata, the outgoing request, and a `next` function
for continuing the request pipeline.

**Signature**

```ts
export interface HttpApiMiddlewareClient<_E, CE, R> {
  (options: {
    readonly endpoint: HttpApiEndpoint.AnyWithProps
    readonly group: HttpApiGroup.AnyWithProps
    readonly request: HttpClientRequest.HttpClientRequest
    readonly next: (
      request: HttpClientRequest.HttpClientRequest
    ) => Effect.Effect<HttpClientResponse.HttpClientResponse, HttpClientError.HttpClientError>
  }): Effect.Effect<HttpClientResponse.HttpClientResponse, CE | HttpClientError.HttpClientError, R>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiMiddleware.ts#L122)

Since v4.0.0