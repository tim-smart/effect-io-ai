Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.bodyFormDataRecord

Creates a `FormData` request body from record-style entries and sets it on the request.

**Signature**

```ts
declare const bodyFormDataRecord: { (entries: HttpBody.FormDataInput): (self: HttpClientRequest) => HttpClientRequest; (self: HttpClientRequest, entries: HttpBody.FormDataInput): HttpClientRequest; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientRequest.ts#L798)

Since v4.0.0