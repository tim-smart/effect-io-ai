Package: `effect`<br />
Module: `HttpApiMiddleware`<br />

## HttpApiMiddleware.HttpApiMiddleware

Server-side middleware function for an HTTP API endpoint.

It receives the endpoint response effect and endpoint/group metadata, and returns
a new response effect that may require additional services and fail with the
middleware's declared error schema.

**Signature**

```ts
type HttpApiMiddleware<Provides, E, Requires> = (
  httpEffect: Effect.Effect<HttpServerResponse, unhandled, Provides>,
  options: {
    readonly endpoint: HttpApiEndpoint.AnyWithProps
    readonly group: HttpApiGroup.AnyWithProps
  }
) => Effect.Effect<HttpServerResponse, unhandled | ErrorSchemaFromConstraint<E>["Type"], Requires | HttpRouter.Provided>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiMiddleware.ts#L76)

Since v4.0.0