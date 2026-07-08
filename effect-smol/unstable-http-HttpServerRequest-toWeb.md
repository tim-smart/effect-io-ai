Package: `effect`<br />
Module: `HttpServerRequest`<br />

## HttpServerRequest.toWeb

Converts an `HttpServerRequest` to a Web `Request` in `Effect`.

**Details**

The current context is used when streaming the request body into the Web
request.

**Signature**

```ts
declare const toWeb: (self: HttpServerRequest, options?: { readonly signal?: AbortSignal | undefined; }) => Effect.Effect<Request, RequestError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerRequest.ts#L1074)

Since v4.0.0