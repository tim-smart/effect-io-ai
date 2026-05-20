Package: `effect`<br />
Module: `HttpRouter`<br />

## HttpRouter.HttpRouter

Service interface for registering HTTP routes and middleware.

**Details**

An `HttpRouter` can add routes, apply path prefixes, install global middleware,
and expose the registered routes as an Effect that handles the current server
request.

**Signature**

```ts
export interface HttpRouter {
  readonly [TypeId]: typeof TypeId

  readonly prefixed: (prefix: string) => HttpRouter

  readonly add: <E = never, R = never>(
    method: "*" | "GET" | "POST" | "PUT" | "PATCH" | "DELETE" | "OPTIONS",
    path: PathInput,
    handler:
      | HttpServerResponse.HttpServerResponse
      | Effect.Effect<HttpServerResponse.HttpServerResponse, E, R>
      | ((request: HttpServerRequest.HttpServerRequest) => Effect.Effect<HttpServerResponse.HttpServerResponse, E, R>),
    options?: { readonly uninterruptible?: boolean | undefined } | undefined
  ) => Effect.Effect<
    void,
    never,
    Request.From<"Requires", Exclude<R, Provided>> | Request.From<"Error", E>
  >

  readonly addAll: <const Routes extends ReadonlyArray<Route<any, any>>>(
    routes: Routes
  ) => Effect.Effect<
    void,
    never,
    | Request.From<"Requires", Exclude<Route.Context<Routes[number]>, Provided>>
    | Request.From<"Error", Route.Error<Routes[number]>>
  >

  readonly addGlobalMiddleware: <E, R>(
    middleware:
      & ((
        effect: Effect.Effect<HttpServerResponse.HttpServerResponse, Types.unhandled>
      ) => Effect.Effect<HttpServerResponse.HttpServerResponse, E, R>)
      & (Types.unhandled extends E ? unknown : "You cannot handle any errors")
  ) => Effect.Effect<
    void,
    never,
    | Request.From<"GlobalRequires", Exclude<R, GlobalProvided>>
    | Request.From<"GlobalError", Exclude<E, Types.unhandled>>
  >

  readonly asHttpEffect: () => Effect.Effect<
    HttpServerResponse.HttpServerResponse,
    unknown,
    HttpServerRequest.HttpServerRequest | Scope.Scope
  >
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRouter.ts#L56)

Since v4.0.0