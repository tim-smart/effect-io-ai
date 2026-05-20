Package: `effect`<br />
Module: `HttpServerResponse`<br />

## HttpServerResponse.urlParams

Creates a response from URL parameters using the
`application/x-www-form-urlencoded` content type by default.

**Signature**

```ts
declare const urlParams: (body: UrlParams.Input, options?: Options.WithContentType | undefined) => HttpServerResponse
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerResponse.ts#L380)

Since v4.0.0