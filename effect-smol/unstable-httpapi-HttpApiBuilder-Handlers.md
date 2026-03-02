Package: `effect`<br />
Module: `HttpApiBuilder`<br />

## HttpApiBuilder.Handlers

Represents a handled `HttpApi`.

**Signature**

```ts
export interface Handlers<
  R,
  Endpoints extends HttpApiEndpoint.Any = never
> extends Pipeable {
  readonly [HandlersTypeId]: {
    _Endpoints: Covariant<Endpoints>
  }
  readonly group: HttpApiGroup.AnyWithProps
  readonly handlers: Set<Handlers.Item<R>>

  /**
   * Add the implementation for an `HttpApiEndpoint` to a `Handlers` group.
   */
  handle<Name extends HttpApiEndpoint.Name<Endpoints>, R1>(
    name: Name,
    handler: HttpApiEndpoint.HandlerWithName<Endpoints, Name, HttpApiEndpoint.ErrorsWithName<Endpoints, Name>, R1>,
    options?: { readonly uninterruptible?: boolean | undefined } | undefined
  ): Handlers<
    | R
    | HttpApiEndpoint.MiddlewareWithName<Endpoints, Name>
    | HttpApiEndpoint.MiddlewareServicesWithName<Endpoints, Name>
    | HttpApiEndpoint.ExcludeProvidedWithName<
      Endpoints,
      Name,
      R1 | HttpApiEndpoint.ServerServicesWithName<Endpoints, Name>
    >,
    HttpApiEndpoint.ExcludeName<Endpoints, Name>
  >

  /**
   * Add the implementation for an `HttpApiEndpoint` to a `Handlers` group.
   * This version opts out of automatic payload decoding and provides the raw request.
   */
  handleRaw<Name extends HttpApiEndpoint.Name<Endpoints>, R1>(
    name: Name,
    handler: HttpApiEndpoint.HandlerRawWithName<Endpoints, Name, HttpApiEndpoint.ErrorsWithName<Endpoints, Name>, R1>,
    options?: { readonly uninterruptible?: boolean | undefined } | undefined
  ): Handlers<
    | R
    | HttpApiEndpoint.MiddlewareWithName<Endpoints, Name>
    | HttpApiEndpoint.MiddlewareServicesWithName<Endpoints, Name>
    | HttpApiEndpoint.ExcludeProvidedWithName<
      Endpoints,
      Name,
      R1 | HttpApiEndpoint.ServerServicesWithName<Endpoints, Name>
    >,
    HttpApiEndpoint.ExcludeName<Endpoints, Name>
  >
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiBuilder.ts#L149)

Since v4.0.0