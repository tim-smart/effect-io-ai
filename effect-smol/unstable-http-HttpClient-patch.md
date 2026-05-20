Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.patch

Executes a `PATCH` request using the `HttpClient` service from the environment.

**Signature**

```ts
declare const patch: (url: string | URL, options?: HttpClientRequest.Options.NoUrl | undefined) => Effect.Effect<HttpClientResponse.HttpClientResponse, Error.HttpClientError, HttpClient>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClient.ts#L215)

Since v4.0.0