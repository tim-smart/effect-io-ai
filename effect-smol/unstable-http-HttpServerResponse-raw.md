Package: `effect`<br />
Module: `HttpServerResponse`<br />

## HttpServerResponse.raw

Creates a response with a raw body value.

**When to use**

Use when the underlying runtime already understands the body value, such
as a Web `Response`, `Blob`, or `ReadableStream`; the body is passed through
for later platform conversion.

**Signature**

```ts
declare const raw: (body: unknown, options?: Options | undefined) => HttpServerResponse
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerResponse.ts#L431)

Since v4.0.0