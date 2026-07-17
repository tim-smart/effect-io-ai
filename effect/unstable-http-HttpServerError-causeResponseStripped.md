Package: `effect`<br />
Module: `HttpServerError`<br />

## HttpServerError.causeResponseStripped

Derives an HTTP response from a failed handler cause synchronously.

**Details**

If the cause contains a defect that is already an `HttpServerResponse`, that
response is used and removed from the remaining cause. Otherwise the response
defaults to `500`.

**Signature**

```ts
declare const causeResponseStripped: <E>(cause: Cause.Cause<E>) => readonly [response: Response.HttpServerResponse, cause: Option.Option<Cause.Cause<E>>]
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpServerError.ts#L340)

Since v4.0.0