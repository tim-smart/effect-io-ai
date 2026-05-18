Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.setHash

Sets the URL fragment on a request without the leading `#`.

**Signature**

```ts
declare const setHash: { (hash: string): (self: HttpClientRequest) => HttpClientRequest; (self: HttpClientRequest, hash: string): HttpClientRequest; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientRequest.ts#L587)

Since v4.0.0