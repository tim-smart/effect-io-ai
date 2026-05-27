Package: `effect`<br />
Module: `HttpServerResponse`<br />

## HttpServerResponse.redirect

Creates a redirect response with a `Location` header.

**Details**

The default status is `302`; custom headers are merged with the generated
`Location` header.

**Signature**

```ts
declare const redirect: (location: string | URL, options?: Options.WithContent | undefined) => HttpServerResponse
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerResponse.ts#L175)

Since v4.0.0