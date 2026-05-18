Package: `effect`<br />
Module: `HttpServer`<br />

## HttpServer.make

Constructs an `HttpServer` service from a serving implementation and listening
address.

**Signature**

```ts
declare const make: (options: { readonly serve: (httpEffect: Effect.Effect<HttpServerResponse, unknown, HttpServerRequest | Scope.Scope>, middleware?: Middleware.HttpMiddleware) => Effect.Effect<void, never, Scope.Scope>; readonly address: Address; }) => HttpServer["Service"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServer.ts#L106)

Since v4.0.0