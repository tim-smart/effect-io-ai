Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.del

Executes a `DELETE` request using the `HttpClient` service from the environment.

**Signature**

```ts
declare const del: (url: string | URL, options?: HttpClientRequest.Options.NoUrl | undefined) => Effect.Effect<HttpClientResponse.HttpClientResponse, Error.HttpClientError, HttpClient>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClient.ts#L255)

Since v4.0.0