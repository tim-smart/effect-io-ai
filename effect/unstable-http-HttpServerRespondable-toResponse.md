Package: `effect`<br />
Module: `HttpServerRespondable`<br />

## HttpServerRespondable.toResponse

Converts a `Respondable` value into an `HttpServerResponse`.

**Details**

If the value is already an HTTP server response it is returned directly; errors
from the response conversion are converted to defects.

**Signature**

```ts
declare const toResponse: (self: Respondable) => Effect.Effect<HttpServerResponse>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpServerRespondable.ts#L64)

Since v4.0.0