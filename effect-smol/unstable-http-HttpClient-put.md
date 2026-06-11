Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.put

Executes a `PUT` request using the `HttpClient` service from the environment.

**Signature**

```ts
declare const put: (url: string | URL, options?: HttpClientRequest.Options.NoUrl | undefined) => Effect.Effect<HttpClientResponse.HttpClientResponse, Error.HttpClientError, HttpClient>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClient.ts#L223)

Since v4.0.0