Package: `effect`<br />
Module: `HttpServerRespondable`<br />

## HttpServerRespondable.toResponseOrElse

Attempts to convert an unknown value into an `HttpServerResponse`, falling back
to the supplied response when no conversion is available.

**Details**

`HttpServerResponse` and `Respondable` values are used directly, schema errors
become `400` responses, and no-such-element errors become `404` responses.

**Signature**

```ts
declare const toResponseOrElse: (u: unknown, orElse: HttpServerResponse) => Effect.Effect<HttpServerResponse>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerRespondable.ts#L93)

Since v4.0.0