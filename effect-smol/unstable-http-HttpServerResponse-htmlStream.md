Package: `effect`<br />
Module: `HttpServerResponse`<br />

## HttpServerResponse.htmlStream

Creates a streaming HTML response from a template.

**Details**

The template is encoded as a byte stream and can use streaming interpolated
values from the current context.

**Signature**

```ts
declare const htmlStream: <A extends ReadonlyArray<Template.InterpolatedWithStream>>(strings: TemplateStringsArray, ...args: A) => Effect.Effect<HttpServerResponse, never, Template.Interpolated.Context<A[number]>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerResponse.ts#L289)

Since v4.0.0