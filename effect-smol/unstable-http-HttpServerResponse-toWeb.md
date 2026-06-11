Package: `effect`<br />
Module: `HttpServerResponse`<br />

## HttpServerResponse.toWeb

Converts an `HttpServerResponse` to a Web `Response`.

**Details**

Cookies are appended as `Set-Cookie` headers. Stream bodies are converted using
the supplied context, and `withoutBody` can be used for responses such as HEAD
responses.

**Signature**

```ts
declare const toWeb: (response: HttpServerResponse, options?: { readonly withoutBody?: boolean | undefined; readonly context?: Context.Context<never> | undefined; }) => Response
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerResponse.ts#L965)

Since v4.0.0