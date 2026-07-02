Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.setUrlParam

Sets one query parameter, replacing existing values for that parameter name.

**Signature**

```ts
declare const setUrlParam: { (key: string, value: string): (self: HttpClientRequest) => HttpClientRequest; (self: HttpClientRequest, key: string, value: string): HttpClientRequest; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientRequest.ts#L504)

Since v4.0.0