## group

Create a `Layer` that will implement all the endpoints in an `HttpApi`.

An unimplemented `Handlers` instance is passed to the `build` function, which
you can use to add handlers to the group.

You can implement endpoints using the `handlers.handle` api.

**Signature**

```ts
declare const group: <ApiId extends string, Groups extends HttpApiGroup.HttpApiGroup.Any, ApiError, ApiR, const Name extends HttpApiGroup.HttpApiGroup.Name<Groups>, Return>(api: HttpApi.HttpApi<ApiId, Groups, ApiError, ApiR>, groupName: Name, build: (handlers: Handlers.FromGroup<ApiError, ApiR, HttpApiGroup.HttpApiGroup.WithName<Groups, Name>>) => Handlers.ValidateReturn<Return>) => Layer.Layer<HttpApiGroup.ApiGroup<ApiId, Name>, Handlers.Error<Return>, Exclude<Handlers.Context<Return> | HttpApiGroup.HttpApiGroup.MiddlewareWithName<Groups, Name>, Scope>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpApiBuilder.ts#L431)

Since v1.0.0