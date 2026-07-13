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
declare const group: <ApiId extends string, Groups extends HttpApiGroup.Constraint, const Identifier extends HttpApiGroup.Identifier<Groups>, Return>(api: HttpApi.HttpApi<ApiId, Groups>, groupIdentifier: Identifier, build: (handlers: Handlers.FromGroup<HttpApiGroup.WithIdentifier<Groups, Identifier>>) => Handlers.ValidateReturn<Return>) => Layer.Layer<HttpApiGroup.Service<ApiId, Identifier>, Handlers.Error<Return>, Exclude<Handlers.Context<Return>, Scope.Scope>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiBuilder.ts#L121)

Since v4.0.0