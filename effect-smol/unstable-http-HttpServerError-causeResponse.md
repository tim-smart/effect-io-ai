Package: `effect`<br />
Module: `HttpServerError`<br />

## HttpServerError.causeResponse

Converts a failed handler cause into the HTTP response that should be sent and
the cause that should be reported.

Respondable failures and defects can choose their own response, defects that
are already `HttpServerResponse` values are used directly, and pure interrupts
produce either `499` for client aborts or `503` for server aborts.

**Signature**

```ts
declare const causeResponse: <E>(cause: Cause.Cause<E>) => Effect.Effect<readonly [Response.HttpServerResponse, Cause.Cause<E>]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerError.ts#L281)

Since v4.0.0