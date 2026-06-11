Package: `effect`<br />
Module: `HttpApiMiddleware`<br />

## HttpApiMiddleware.HttpApiMiddlewareSecurity

Server-side middleware implementations for one or more security schemes.

**Details**

Each property handles the credential decoded for that scheme and wraps the
endpoint response effect with the middleware's declared requirements and errors.

**Signature**

```ts
type HttpApiMiddlewareSecurity<Security, Provides, E, Requires> = {
  readonly [K in keyof Security]: (
    httpEffect: Effect.Effect<HttpServerResponse, unhandled, Provides>,
    options: {
      readonly credential: HttpApiSecurity.HttpApiSecurity.Type<Security[K]>
      readonly endpoint: HttpApiEndpoint.AnyWithProps
      readonly group: HttpApiGroup.AnyWithProps
    }
  ) => Effect.Effect<
    HttpServerResponse,
    unhandled | ErrorSchemaFromConstraint<E>["Type"],
    Requires | HttpRouter.Provided
  >
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiMiddleware.ts#L82)

Since v4.0.0