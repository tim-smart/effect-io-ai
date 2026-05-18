Package: `effect`<br />
Module: `AtomHttpApi`<br />

## AtomHttpApi.AtomHttpApiClient

A `Context.Service` for an HTTP API client integrated with atom reactivity.

It exposes the generated HTTP API client, an atom runtime, mutation helpers that
return `AtomResultFn`s, and query helpers that return atoms of endpoint results.

**Signature**

```ts
export interface AtomHttpApiClient<Self, Id extends string, Groups extends HttpApiGroup.Any>
  extends Context.Service<Self, HttpApiClient.Client<Groups, never, never>>
{
  new(_: never): Context.ServiceClass.Shape<Id, HttpApiClient.Client<Groups, never, never>>

  readonly runtime: Atom.AtomRuntime<Self>

  readonly mutation: <
    GroupName extends HttpApiGroup.Name<Groups>,
    Name extends HttpApiEndpoint.Name<HttpApiGroup.Endpoints<Group>>,
    Group extends HttpApiGroup.Any = HttpApiGroup.WithName<Groups, GroupName>,
    Endpoint extends HttpApiEndpoint.Any = HttpApiEndpoint.WithName<
      HttpApiGroup.Endpoints<Group>,
      Name
    >,
    const ResponseMode extends HttpApiEndpoint.ClientResponseMode = HttpApiEndpoint.ClientResponseMode
  >(
    group: GroupName,
    endpoint: Name,
    options?: {
      readonly responseMode?: ResponseMode | undefined
    }
  ) => [Endpoint] extends [
    HttpApiEndpoint.HttpApiEndpoint<
      infer _Name,
      infer _Method,
      infer _Path,
      infer _Params,
      infer _Query,
      infer _Payload,
      infer _Headers,
      infer _Success,
      infer _Error,
      infer _Middleware,
      infer _RE
    >
  ] ? Atom.AtomResultFn<
      Simplify<
        HttpApiEndpoint.ClientRequest<_Params, _Query, _Payload, _Headers, "decoded-only"> & {
          readonly reactivityKeys?: ReadonlyArray<unknown> | ReadonlyRecord<string, ReadonlyArray<unknown>> | undefined
        }
      >,
      ResponseByMode<_Success["Type"], ResponseMode>,
      ErrorByMode<_Error, _Middleware, ResponseMode>
    >
    : never

  readonly query: <
    GroupName extends HttpApiGroup.Name<Groups>,
    Name extends HttpApiEndpoint.Name<HttpApiGroup.Endpoints<Group>>,
    Group extends HttpApiGroup.Any = HttpApiGroup.WithName<Groups, GroupName>,
    Endpoint extends HttpApiEndpoint.Any = HttpApiEndpoint.WithName<
      HttpApiGroup.Endpoints<Group>,
      Name
    >,
    const ResponseMode extends HttpApiEndpoint.ClientResponseMode = "decoded-only"
  >(
    group: GroupName,
    endpoint: Name,
    request: [Endpoint] extends [
      HttpApiEndpoint.HttpApiEndpoint<
        infer _Name,
        infer _Method,
        infer _Path,
        infer _Params,
        infer _Query,
        infer _Payload,
        infer _Headers,
        infer _Success,
        infer _Error,
        infer _R,
        infer _RE
      >
    ] ? Simplify<
        HttpApiEndpoint.ClientRequest<_Params, _Query, _Payload, _Headers, ResponseMode> & {
          readonly reactivityKeys?:
            | ReadonlyArray<unknown>
            | ReadonlyRecord<string, ReadonlyArray<unknown>>
            | undefined
          readonly timeToLive?: Duration.Input | undefined
          readonly serializationKey?: string | undefined
        }
      >
      : never
  ) => [Endpoint] extends [
    HttpApiEndpoint.HttpApiEndpoint<
      infer _Name,
      infer _Method,
      infer _Path,
      infer _Params,
      infer _Query,
      infer _Payload,
      infer _Headers,
      infer _Success,
      infer _Error,
      infer _Middleware,
      infer _RE
    >
  ] ? Atom.Atom<
      AsyncResult.AsyncResult<
        ResponseByMode<_Success["Type"], ResponseMode>,
        ErrorByMode<_Error, _Middleware, ResponseMode>
      >
    >
    : never
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AtomHttpApi.ts#L60)

Since v4.0.0