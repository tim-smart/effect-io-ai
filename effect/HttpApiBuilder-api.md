# api

Build a root level `Layer` from an `HttpApi` instance.

The `Layer` will provide the `HttpApi` service, and will require the
implementation for all the `HttpApiGroup`'s contained in the `HttpApi`.

The resulting `Layer` can be provided to the `HttpApiBuilder.serve` layer.

To import and use `api` from the "HttpApiBuilder" module:

```ts
import * as HttpApiBuilder from "@effect/platform/HttpApiBuilder"
// Can be accessed like this
HttpApiBuilder.api
```

**Signature**

```ts
export declare const api: <Groups extends HttpApiGroup.HttpApiGroup.Any, Error, ErrorR>(
  self: HttpApi.HttpApi<Groups, Error, ErrorR>
) => Layer.Layer<HttpApi.HttpApi.Service, never, HttpApiGroup.HttpApiGroup.ToService<Groups> | ErrorR>
```
