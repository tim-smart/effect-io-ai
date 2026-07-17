Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.bodyText

Sets a text request body with an optional content type.

**Signature**

```ts
declare const bodyText: { (body: string, contentType?: string): (self: HttpClientRequest) => HttpClientRequest; (self: HttpClientRequest, body: string, contentType?: string): HttpClientRequest; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpClientRequest.ts#L661)

Since v4.0.0