Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.makeWith

Constructs an `HttpClientRequest` from fully normalized request components.

**Signature**

```ts
declare const makeWith: (method: HttpMethod, url: string, urlParams: UrlParams.Input, hash: Option.Option<string>, headers: Headers.Headers, body: HttpBody.HttpBody) => HttpClientRequest
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpClientRequest.ts#L117)

Since v4.0.0