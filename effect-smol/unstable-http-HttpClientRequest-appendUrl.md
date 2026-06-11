Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.appendUrl

Appends a URL segment to the request URL, inserting or trimming one slash as needed.

**Signature**

```ts
declare const appendUrl: { (path: string): (self: HttpClientRequest) => HttpClientRequest; (self: HttpClientRequest, path: string): HttpClientRequest; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientRequest.ts#L451)

Since v4.0.0