Package: `effect`<br />
Module: `HttpClientResponse`<br />

## HttpClientResponse.fromWeb

Wraps a Web `Response` and its original `HttpClientRequest` as an `HttpClientResponse`.

**Signature**

```ts
declare const fromWeb: (request: HttpClientRequest.HttpClientRequest, source: Response) => HttpClientResponse
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientResponse.ts#L108)

Since v4.0.0