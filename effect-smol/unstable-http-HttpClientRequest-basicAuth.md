Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.basicAuth

Sets the `Authorization` header using HTTP Basic authentication credentials.

**Signature**

```ts
declare const basicAuth: { (username: string | Redacted.Redacted, password: string | Redacted.Redacted): (self: HttpClientRequest) => HttpClientRequest; (self: HttpClientRequest, username: string | Redacted.Redacted, password: string | Redacted.Redacted): HttpClientRequest; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientRequest.ts#L345)

Since v4.0.0