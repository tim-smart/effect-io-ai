Package: `effect`<br />
Module: `HttpApiBuilder`<br />

## HttpApiBuilder.group

Create a `Layer` that implements all endpoints in an `HttpApi` group.

**Details**

The `build` function receives an unimplemented `Handlers` instance that can
be used to add handlers to the group. Implement endpoints with
`handlers.handle`.

**Signature**

```ts
declare const group: <ApiId extends string, Groups extends HttpApiGroup.Any, const Name extends HttpApiGroup.Name<Groups>, Return>(api: HttpApi.HttpApi<ApiId, Groups>, groupName: Name, build: (handlers: Handlers.FromGroup<HttpApiGroup.WithName<Groups, Name>>) => Handlers.ValidateReturn<Return>) => Layer.Layer<HttpApiGroup.ApiGroup<ApiId, Name>, Handlers.Error<Return>, Exclude<Handlers.Context<Return>, Scope.Scope>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiBuilder.ts#L119)

Since v4.0.0