Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.makeWith

Constructs an `HttpClientRequest` from fully normalized request components.

**Signature**

```ts
declare const makeWith: (method: HttpMethod, url: string, urlParams: UrlParams.UrlParams, hash: Option.Option<string>, headers: Headers.Headers, body: HttpBody.HttpBody) => HttpClientRequest
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientRequest.ts#L116)

Since v4.0.0