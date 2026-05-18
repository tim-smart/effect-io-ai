Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.execute

Executes a prebuilt `HttpClientRequest` using the `HttpClient` service from the environment.

**Signature**

```ts
declare const execute: (request: HttpClientRequest.HttpClientRequest) => Effect.Effect<HttpClientResponse.HttpClientResponse, Error.HttpClientError, HttpClient>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClient.ts#L167)

Since v4.0.0