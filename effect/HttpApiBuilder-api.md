# api

Create a top-level `HttpApi` layer.

To import and use `api` from the "HttpApiBuilder" module:

ts
import \* as HttpApiBuilder from "@effect/platform/HttpApiBuilder"
// Can be accessed like this
HttpApiBuilder.api
undefined

**Signature**

```ts
export declare const api: <Groups extends HttpApiGroup.HttpApiGroup.Any, E, R>(
  api: HttpApi.HttpApi<Groups, E, R>
) => Layer.Layer<
  HttpApi.Api,
  never,
  HttpApiGroup.HttpApiGroup.ToService<Groups> | R | HttpApiGroup.HttpApiGroup.ErrorContext<Groups>
>
```
