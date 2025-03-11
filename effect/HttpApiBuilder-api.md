## api

Create a top-level `HttpApi` layer.

**Signature**

```ts
declare const api: <Id extends string, Groups extends HttpApiGroup.HttpApiGroup.Any, E, R>(api: HttpApi.HttpApi<Id, Groups, E, R>) => Layer.Layer<HttpApi.Api, never, HttpApiGroup.HttpApiGroup.ToService<Id, Groups> | R | HttpApiGroup.HttpApiGroup.ErrorContext<Groups>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpApiBuilder.ts#L58)

Since v1.0.0