Package: `effect`<br />
Module: `HttpApiBuilder`<br />

## HttpApiBuilder.group

Create a `Layer` that will implement all the endpoints in an `HttpApi`.

An unimplemented `Handlers` instance is passed to the `build` function, which
you can use to add handlers to the group.

You can implement endpoints using the `handlers.handle` api.

**Signature**

```ts
declare const group: <ApiId extends string, Groups extends HttpApiGroup.Any, const Name extends HttpApiGroup.Name<Groups>, Return>(api: HttpApi.HttpApi<ApiId, Groups>, groupName: Name, build: (handlers: Handlers.FromGroup<HttpApiGroup.WithName<Groups, Name>>) => Handlers.ValidateReturn<Return>) => Layer.Layer<HttpApiGroup.ApiGroup<ApiId, Name>, Handlers.Error<Return>, Exclude<Handlers.Context<Return>, Scope.Scope>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiBuilder.ts#L100)

Since v4.0.0