Package: `effect`<br />
Module: `HttpRouter`<br />

## HttpRouter.middleware.Make

Overloaded constructor type for router middleware.

**Details**

It builds either a route-scoped `Middleware` or, when `global` is `true`, a
layer that installs middleware for all routes. The type tracks provided
services, handled errors, middleware failures, and remaining requirements.

**Signature**

```ts
type Make<Provides, Handles> = {
    <E, R, EX, RX, const Global extends boolean = false>(
      middleware: Effect.Effect<
        (
          effect: Effect.Effect<
            HttpServerResponse.HttpServerResponse,
            Types.NoInfer<Handles | Types.unhandled>,
            Types.NoInfer<Provides>
          >
        ) =>
          & Effect.Effect<
            HttpServerResponse.HttpServerResponse,
            E,
            R
          >
          & (Types.unhandled extends E ? unknown : "You must only handle the configured errors"),
        EX,
        RX
      >,
      options?: {
        readonly global?: Global | undefined
      }
    ): Global extends true ? Layer.Layer<
        | Request.From<"Requires", Provides>
        | Request.From<"Error", Handles>
        | Request.From<"GlobalRequires", Provides>
        | Request.From<"GlobalError", Handles>,
        EX,
        | HttpRouter
        | Exclude<RX, Scope.Scope>
        | Request.From<"GlobalRequires", Exclude<R, GlobalProvided>>
        | Request.From<"GlobalError", Exclude<E, Types.unhandled>>
      > :
      Middleware<{
        provides: Provides
        handles: Handles
        error: Exclude<E, Types.unhandled>
        requires: Exclude<R, Provided>
        layerError: EX
        layerRequires: Exclude<RX, Scope.Scope>
      }>
    <E, R, const Global extends boolean = false>(
      middleware:
        & ((
          effect: Effect.Effect<
            HttpServerResponse.HttpServerResponse,
            Types.NoInfer<Handles | Types.unhandled>,
            Types.NoInfer<Provides>
          >
        ) => Effect.Effect<
          HttpServerResponse.HttpServerResponse,
          E,
          R
        >)
        & (Types.unhandled extends E ? unknown : "You must only handle the configured errors"),
      options?: {
        readonly global?: Global | undefined
      }
    ): Global extends true ? Layer.Layer<
        | Request.From<"Requires", Provides>
        | Request.From<"Error", Handles>
        | Request.From<"GlobalRequires", Provides>
        | Request.From<"GlobalError", Handles>,
        never,
        | HttpRouter
        | Request.From<"GlobalRequires", Exclude<R, GlobalProvided>>
        | Request.From<"GlobalError", Exclude<E, Types.unhandled>>
      > :
      Middleware<{
        provides: Provides
        handles: Handles
        error: Exclude<E, Types.unhandled>
        requires: Exclude<R, Provided>
        layerError: never
        layerRequires: never
      }>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRouter.ts#L1059)

Since v4.0.0