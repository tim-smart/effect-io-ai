Package: `effect`<br />
Module: `HttpServerResponse`<br />

## HttpServerResponse.fromWeb

Converts a Web `Response` to an `HttpServerResponse`.

**Details**

`Set-Cookie` headers are parsed into the response cookie collection and removed
from the header map. A present Web body is exposed as a stream body.

**Signature**

```ts
declare const fromWeb: (response: Response) => HttpServerResponse
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerResponse.ts#L1363)

Since v4.0.0