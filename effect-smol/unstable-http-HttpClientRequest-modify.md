Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.modify

Applies request options to an `HttpClientRequest`, returning a new request.

**Signature**

```ts
declare const modify: { (options: Options): (self: HttpClientRequest) => HttpClientRequest; (self: HttpClientRequest, options: Options): HttpClientRequest; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientRequest.ts#L273)

Since v4.0.0