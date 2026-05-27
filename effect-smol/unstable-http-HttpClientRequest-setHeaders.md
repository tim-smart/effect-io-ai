Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.setHeaders

Sets multiple request headers from an input collection, replacing existing values with matching names.

**Signature**

```ts
declare const setHeaders: { (input: Headers.Input): (self: HttpClientRequest) => HttpClientRequest; (self: HttpClientRequest, input: Headers.Input): HttpClientRequest; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientRequest.ts#L347)

Since v4.0.0