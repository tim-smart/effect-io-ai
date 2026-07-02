Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.appendUrlParam

Appends one query parameter value without removing existing values for the same name.

**Signature**

```ts
declare const appendUrlParam: { (key: string, value: string): (self: HttpClientRequest) => HttpClientRequest; (self: HttpClientRequest, key: string, value: string): HttpClientRequest; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientRequest.ts#L542)

Since v4.0.0