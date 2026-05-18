Package: `effect`<br />
Module: `HttpEffect`<br />

## HttpEffect.toWebHandlerWith

Converts an HTTP server effect into a Web `Request` handler using the supplied base context and optional middleware.

**Signature**

```ts
declare const toWebHandlerWith: <Provided, R = never, ReqR = Exclude<R, Scope.Scope | HttpServerRequest | Provided>>(context: Context.Context<Provided>) => <E>(self: Effect.Effect<HttpServerResponse, E, R>, middleware?: HttpMiddleware | undefined) => [ReqR] extends [never] ? (request: Request, context?: Context.Context<never> | undefined) => Promise<globalThis.Response> : (request: Request, context: Context.Context<ReqR>) => Promise<globalThis.Response>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpEffect.ts#L238)

Since v4.0.0