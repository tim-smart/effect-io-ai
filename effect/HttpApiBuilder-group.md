# group

Create a `Layer` that will implement all the endpoints in an `HttpApi`.

An unimplemented `Handlers` instance is passed to the `build` function, which
you can use to add handlers to the group.

You can implement endpoints using the `handlers.handle` api.

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
  ApiR,
  const Name extends HttpApiGroup.HttpApiGroup.Name<Groups>,
  Return
>(
  api: HttpApi.HttpApi<Groups, ApiError, ApiR>,
  groupName: Name,
  build: (
    handlers: Handlers.FromGroup<ApiError, ApiR, HttpApiGroup.HttpApiGroup.WithName<Groups, Name>>
  ) => Handlers.ValidateReturn<Return>
) => Layer.Layer<
  HttpApiGroup.Group<Name>,
  Handlers.Error<Return>,
  Handlers.Context<Return> | HttpApiGroup.HttpApiGroup.ContextWithName<Groups, Name>
>
```
