# middlewareOpenApi

A middleware that adds an openapi.json endpoint to the API.

To import and use `middlewareOpenApi` from the "HttpApiBuilder" module:

```ts
import * as HttpApiBuilder from "@effect/platform/HttpApiBuilder"
// Can be accessed like this
HttpApiBuilder.middlewareOpenApi
```

**Signature**

```ts
export declare const middlewareOpenApi: (
  options?:
    | {
        readonly path?: HttpApiEndpoint.PathSegment | undefined
        readonly additionalPropertiesStrategy?: OpenApi.AdditionalPropertiesStrategy | undefined
      }
    | undefined
) => Layer.Layer<never, never, HttpApi.Api>
```
