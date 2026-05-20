Package: `effect`<br />
Module: `HttpServerResponse`<br />

## HttpServerResponse.Options.WithContent

Response options for constructors whose body determines its own content type
and content length.

**Signature**

```ts
export interface WithContent extends Omit<Options, "contentType" | "contentLength"> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerResponse.ts#L102)

Since v4.0.0