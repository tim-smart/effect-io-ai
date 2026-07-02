Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.toWebResult

Converts an `HttpClientRequest` safely to a Web `Request` as a `Result`, failing when the request URL is invalid.

**Signature**

```ts
declare const toWebResult: (self: HttpClientRequest, options?: { readonly signal?: AbortSignal | undefined; readonly context?: Context.Context<never> | undefined; }) => Result.Result<Request, Url.UrlError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientRequest.ts#L904)

Since v4.0.0