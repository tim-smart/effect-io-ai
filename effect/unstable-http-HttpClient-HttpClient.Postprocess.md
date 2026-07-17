Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.HttpClient.Postprocess

Function that turns a preprocessed request effect into the response effect executed by the client.

**Signature**

```ts
type Postprocess<E, R> = (
    request: Effect.Effect<HttpClientRequest.HttpClientRequest, E, R>
  ) => Effect.Effect<HttpClientResponse.HttpClientResponse, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpClient.ts#L133)

Since v4.0.0