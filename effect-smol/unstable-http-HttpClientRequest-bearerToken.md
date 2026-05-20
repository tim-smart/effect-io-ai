Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.bearerToken

Sets the `Authorization` header using a bearer token.

**Signature**

```ts
declare const bearerToken: { (token: string | Redacted.Redacted): (self: HttpClientRequest) => HttpClientRequest; (self: HttpClientRequest, token: string | Redacted.Redacted): HttpClientRequest; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientRequest.ts#L371)

Since v4.0.0