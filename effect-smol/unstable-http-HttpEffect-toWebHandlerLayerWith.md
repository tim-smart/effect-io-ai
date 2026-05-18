Package: `effect`<br />
Module: `HttpEffect`<br />

## HttpEffect.toWebHandlerLayerWith

Builds a Web `Request` handler from a layer and handler factory, returning the handler with a `dispose` function for the layer scope.

**Signature**

```ts
declare const toWebHandlerLayerWith: <E, Provided, LE, R, ReqR = Exclude<R, Scope.Scope | HttpServerRequest | Provided>>(layer: Layer.Layer<Provided, LE>, options: { readonly toHandler: (context: Context.Context<Provided>) => Effect.Effect<Effect.Effect<HttpServerResponse, E, R>, LE>; readonly middleware?: HttpMiddleware | undefined; readonly memoMap?: Layer.MemoMap | undefined; }) => { readonly dispose: () => Promise<void>; readonly handler: [ReqR] extends [never] ? (request: Request, context?: Context.Context<never> | undefined) => Promise<globalThis.Response> : (request: Request, context: Context.Context<ReqR>) => Promise<globalThis.Response>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpEffect.ts#L292)

Since v4.0.0