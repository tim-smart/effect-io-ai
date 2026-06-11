Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.HttpClient

HTTP client whose requests produce `HttpClientResponse` values and can fail with `HttpClientError`.

**Signature**

```ts
export interface HttpClient extends HttpClient.With<Error.HttpClientError> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClient.ts#L61)

Since v4.0.0