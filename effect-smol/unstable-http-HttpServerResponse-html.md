Package: `effect`<br />
Module: `HttpServerResponse`<br />

## HttpServerResponse.html

Creates an HTML response with the `text/html` content type.

Passing a string returns a response directly. Using it as a template tag returns
an effect so interpolated values can be rendered with their required services
and errors.

**Signature**

```ts
declare const html: { <A extends ReadonlyArray<Template.Interpolated>>(strings: TemplateStringsArray, ...args: A): Effect.Effect<HttpServerResponse, Template.Interpolated.Error<A[number]>, Template.Interpolated.Context<A[number]>>; (html: string): HttpServerResponse; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerResponse.ts#L227)

Since v4.0.0