# api

Create a top-level `HttpApi` layer.

To import and use `api` from the "HttpApiBuilder" module:

```ts
import * as HttpApiBuilder from "@effect/platform/HttpApiBuilder"
// Can be accessed like this
HttpApiBuilder.api
```

**Signature**

```ts
export declare const api: <Id extends string, Groups extends HttpApiGroup.HttpApiGroup.Any, E, R>(
  api: HttpApi.HttpApi<Id, Groups, E, R>
) => Layer.Layer<
  HttpApi.Api,
  never,
  HttpApiGroup.HttpApiGroup.ToService<Id, Groups> | R | HttpApiGroup.HttpApiGroup.ErrorContext<Groups>
>
```
