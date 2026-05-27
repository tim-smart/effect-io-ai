Package: `effect`<br />
Module: `HttpServerResponse`<br />

## HttpServerResponse.setStatus

Sets the HTTP status code of an `HttpServerResponse`.

**Details**

When `statusText` is omitted, the existing status text is preserved.

**Signature**

```ts
declare const setStatus: { (status: number, statusText?: string | undefined): (self: HttpServerResponse) => HttpServerResponse; (self: HttpServerResponse, status: number, statusText?: string | undefined): HttpServerResponse; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerResponse.ts#L957)

Since v4.0.0