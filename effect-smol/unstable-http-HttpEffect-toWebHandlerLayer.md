Package: `effect`<br />
Module: `HttpEffect`<br />

## HttpEffect.toWebHandlerLayer

Builds a Web `Request` handler for an HTTP server effect using a layer to provide its services, returning the handler with a `dispose` function.

**Signature**

```ts
declare const toWebHandlerLayer: <E, R, Provided, LE, ReqR = Exclude<R, Scope.Scope | HttpServerRequest | Provided>>(self: Effect.Effect<HttpServerResponse, E, R>, layer: Layer.Layer<Provided, LE>, options?: { readonly middleware?: HttpMiddleware | undefined; readonly memoMap?: Layer.MemoMap | undefined; } | undefined) => { readonly dispose: () => Promise<void>; readonly handler: [ReqR] extends [never] ? (request: Request, context?: Context.Context<never> | undefined) => Promise<globalThis.Response> : (request: Request, context: Context.Context<ReqR>) => Promise<globalThis.Response>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpEffect.ts#L354)

Since v4.0.0