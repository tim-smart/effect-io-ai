Package: `effect`<br />
Module: `HttpServerRespondable`<br />

## HttpServerRespondable.toResponseOrElseDefect

Attempts to convert an unknown defect into an `HttpServerResponse`, falling
back to the supplied response when no conversion is available.

**Details**

Only `HttpServerResponse` and `Respondable` values receive special handling.

**Signature**

```ts
declare const toResponseOrElseDefect: (u: unknown, orElse: HttpServerResponse) => Effect.Effect<HttpServerResponse>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpServerRespondable.ts#L108)

Since v4.0.0