Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.appendUrlParams

Appends query parameters from an input collection without removing existing values for matching names.

**Signature**

```ts
declare const appendUrlParams: { (input: UrlParams.Input): (self: HttpClientRequest) => HttpClientRequest; (self: HttpClientRequest, input: UrlParams.Input): HttpClientRequest; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientRequest.ts#L560)

Since v4.0.0