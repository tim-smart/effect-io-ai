Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.head

Executes a `HEAD` request using the `HttpClient` service from the environment.

**Signature**

```ts
declare const head: (url: string | URL, options?: HttpClientRequest.Options.NoUrl | undefined) => Effect.Effect<HttpClientResponse.HttpClientResponse, Error.HttpClientError, HttpClient>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClient.ts#L212)

Since v4.0.0