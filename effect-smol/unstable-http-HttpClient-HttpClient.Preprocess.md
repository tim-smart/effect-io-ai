Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.HttpClient.Preprocess

Effectful transformation applied to a request before the client executes it.

**Signature**

```ts
type Preprocess<E, R> = (
    request: HttpClientRequest.HttpClientRequest
  ) => Effect.Effect<HttpClientRequest.HttpClientRequest, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClient.ts#L148)

Since v4.0.0