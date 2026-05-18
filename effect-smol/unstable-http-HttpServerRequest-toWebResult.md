Package: `effect`<br />
Module: `HttpServerRequest`<br />

## HttpServerRequest.toWebResult

Converts an `HttpServerRequest` to a Web `Request` as a `Result`.

If the source is already a Web `Request`, it is returned unchanged. Otherwise
an absolute URL is derived from the request; invalid URLs fail with a
`RequestParseError`.

**Signature**

```ts
declare const toWebResult: (self: HttpServerRequest, options?: { readonly signal?: AbortSignal | undefined; readonly context?: Context.Context<never> | undefined; }) => Result.Result<Request, RequestError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerRequest.ts#L997)

Since v4.0.0