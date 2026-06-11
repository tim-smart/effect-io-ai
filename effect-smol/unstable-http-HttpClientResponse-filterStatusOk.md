Package: `effect`<br />
Module: `HttpClientResponse`<br />

## HttpClientResponse.filterStatusOk

Succeeds with the response only when its status is in the 2xx range, otherwise fails with `HttpClientError`.

**Signature**

```ts
declare const filterStatusOk: (self: HttpClientResponse) => Effect.Effect<HttpClientResponse, Error.HttpClientError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientResponse.ts#L235)

Since v4.0.0