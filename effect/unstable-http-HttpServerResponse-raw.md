Package: `effect`<br />
Module: `HttpServerResponse`<br />

## HttpServerResponse.raw

Creates a response with a raw body value.

**When to use**

Use when you want to pass through a body value already understood by the
underlying runtime, such as a Web `Response`, `Blob`, or `ReadableStream`,
for later platform conversion.

**Signature**

```ts
declare const raw: (body: unknown, options?: Options | undefined) => HttpServerResponse
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpServerResponse.ts#L403)

Since v4.0.0