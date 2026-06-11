Package: `effect`<br />
Module: `HttpRouter`<br />

## HttpRouter.make

Constructs an empty `HttpRouter` service.

**Details**

The returned router accepts route and middleware registrations and later routes
the current `HttpServerRequest` to the matching `HttpServerResponse`.

**Signature**

```ts
declare const make: Effect.Effect<HttpRouter, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRouter.ts#L118)

Since v4.0.0