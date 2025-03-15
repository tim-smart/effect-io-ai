Package: `@effect/platform`<br />
Module: `HttpApiBuilder`<br />

## HttpApiBuilder.Handlers

Represents a handled `HttpApi`.

**Signature**

```ts
export interface Handlers<
  E,
  Provides,
  R,
  Endpoints extends HttpApiEndpoint.HttpApiEndpoint.Any = never
> extends Pipeable {
  readonly [HandlersTypeId]: {
    _Endpoints: Covariant<Endpoints>
  }
  readonly group: HttpApiGroup.HttpApiGroup.AnyWithProps
  readonly handlers: Chunk.Chunk<Handlers.Item<E, R>>

  /**
   * Add the implementation for an `HttpApiEndpoint` to a `Handlers` group.
   */
  handle<Name extends HttpApiEndpoint.HttpApiEndpoint.Name<Endpoints>, R1>(
    name: Name,
    handler: HttpApiEndpoint.HttpApiEndpoint.HandlerWithName<Endpoints, Name, E, R1>
  ): Handlers<
    E,
    Provides,
    | R
    | Exclude<
      HttpApiEndpoint.HttpApiEndpoint.ExcludeProvided<
        Endpoints,
        Name,
        R1 | HttpApiEndpoint.HttpApiEndpoint.ContextWithName<Endpoints, Name>
      >,
      Provides
    >,
    HttpApiEndpoint.HttpApiEndpoint.ExcludeName<Endpoints, Name>
  >

  /**
   * Add the implementation for an `HttpApiEndpoint` to a `Handlers` group.
   * This version of the api allows you to return the full response object.
   */
  handleRaw<Name extends HttpApiEndpoint.HttpApiEndpoint.Name<Endpoints>, R1>(
    name: Name,
    handler: HttpApiEndpoint.HttpApiEndpoint.HandlerResponseWithName<Endpoints, Name, E, R1>
  ): Handlers<
    E,
    Provides,
    | R
    | Exclude<
      HttpApiEndpoint.HttpApiEndpoint.ExcludeProvided<
        Endpoints,
        Name,
        R1 | HttpApiEndpoint.HttpApiEndpoint.ContextWithName<Endpoints, Name>
      >,
      Provides
    >,
    HttpApiEndpoint.HttpApiEndpoint.ExcludeName<Endpoints, Name>
  >
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpApiBuilder.ts#L205)

Since v1.0.0