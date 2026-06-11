Package: `effect`<br />
Module: `HttpServerError`<br />

## HttpServerError.exitResponse

Extracts the response from a successful handler exit, or derives a response
from the failure cause.

**Signature**

```ts
declare const exitResponse: <E>(exit: Exit.Exit<Response.HttpServerResponse, E>) => Response.HttpServerResponse
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerError.ts#L369)

Since v4.0.0