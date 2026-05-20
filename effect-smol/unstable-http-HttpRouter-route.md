Package: `effect`<br />
Module: `HttpRouter`<br />

## HttpRouter.route

Constructs a `Route` from an HTTP method, path, and handler.

**Details**

The handler may be a static response, an effect that produces a response, or a
function from the current request to a response effect. Set `uninterruptible` to
prevent the route handler from being made interruptible while it runs.

**Signature**

```ts
declare const route: <E = never, R = never>(method: "*" | HttpMethod.HttpMethod, path: PathInput, handler: HttpServerResponse.HttpServerResponse | Effect.Effect<HttpServerResponse.HttpServerResponse, E, R> | ((request: HttpServerRequest.HttpServerRequest) => Effect.Effect<HttpServerResponse.HttpServerResponse, E, R>), options?: { readonly uninterruptible?: boolean | undefined; }) => Route<E, Exclude<R, Provided>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRouter.ts#L658)

Since v4.0.0