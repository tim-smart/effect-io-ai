Package: `effect`<br />
Module: `HttpServerResponse`<br />

## HttpServerResponse.setHeader

Returns a response with the specified header set to the supplied value.

**Signature**

```ts
declare const setHeader: { (key: string, value: string): (self: HttpServerResponse) => HttpServerResponse; (self: HttpServerResponse, key: string, value: string): HttpServerResponse; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerResponse.ts#L524)

Since v4.0.0