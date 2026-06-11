Package: `@effect/platform-node`<br />
Module: `NodeHttpServerRequest`<br />

## NodeHttpServerRequest.toServerResponse

Returns the underlying Node `ServerResponse` for a platform Node
`HttpServerRequest`, evaluating the stored response thunk when the response
was created lazily.

**Signature**

```ts
declare const toServerResponse: (self: HttpServerRequest) => Http.ServerResponse
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeHttpServerRequest.ts#L30)

Since v4.0.0