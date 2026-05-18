Package: `effect`<br />
Module: `HttpServerResponse`<br />

## HttpServerResponse.Options.WithContentType

Response options for constructors that allow overriding the content type while
deriving the content length from the body.

**Signature**

```ts
export interface WithContentType extends Omit<Options, "contentLength"> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerResponse.ts#L109)

Since v4.0.0