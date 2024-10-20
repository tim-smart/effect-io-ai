# group

Create a `Layer` that will implement all the endpoints in an `HttpApiGroup`.

An unimplemented `Handlers` instance is passed to the `build` function, which
you can use to add handlers to the group.

You can implement endpoints using the `HttpApiBuilder.handle` api.

To import and use `group` from the "HttpApiBuilder" module:

```ts
import * as HttpApiBuilder from "@effect/platform/HttpApiBuilder"
// Can be accessed like this
HttpApiBuilder.group
```

**Signature**

```ts
export declare const group: <
  Groups extends HttpApiGroup.HttpApiGroup.Any,
  ApiError,
  ApiErrorR,
  const Name extends Groups["identifier"],
  RH,
  EX = never,
  RX = never
>(
  api: HttpApi.HttpApi<Groups, ApiError, ApiErrorR>,
  groupName: Name,
  build: (
    handlers: Handlers<never, never, HttpApiGroup.HttpApiGroup.EndpointsWithName<Groups, Name>>
  ) =>
    | Handlers<NoInfer<ApiError> | HttpApiGroup.HttpApiGroup.ErrorWithName<Groups, Name>, RH>
    | Effect.Effect<Handlers<NoInfer<ApiError> | HttpApiGroup.HttpApiGroup.ErrorWithName<Groups, Name>, RH>, EX, RX>
) => Layer.Layer<
  HttpApiGroup.HttpApiGroup.Service<Name>,
  EX,
  RX | RH | HttpApiGroup.HttpApiGroup.ContextWithName<Groups, Name> | ApiErrorR
>
```
