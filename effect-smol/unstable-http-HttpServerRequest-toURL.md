Package: `effect`<br />
Module: `HttpServerRequest`<br />

## HttpServerRequest.toURL

Attempts to construct an absolute `URL` for a server request safely.

**Details**

The host comes from the `host` header, defaulting to `localhost`, and the
protocol is `https` only when `x-forwarded-proto` is `https`; invalid URLs
return `Option.none`.

**Signature**

```ts
declare const toURL: (self: HttpServerRequest) => Option.Option<URL>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerRequest.ts#L1011)

Since v4.0.0