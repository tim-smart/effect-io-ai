# middlewareCors

A CORS middleware layer that can be provided to the `HttpApiBuilder.serve` layer.

To import and use `middlewareCors` from the "HttpApiBuilder" module:

```ts
import * as HttpApiBuilder from "@effect/platform/HttpApiBuilder"
// Can be accessed like this
HttpApiBuilder.middlewareCors
```

**Signature**

```ts
export declare const middlewareCors: (
  options?:
    | {
        readonly allowedOrigins?: ReadonlyArray<string> | undefined
        readonly allowedMethods?: ReadonlyArray<string> | undefined
        readonly allowedHeaders?: ReadonlyArray<string> | undefined
        readonly exposedHeaders?: ReadonlyArray<string> | undefined
        readonly maxAge?: number | undefined
        readonly credentials?: boolean | undefined
      }
    | undefined
) => Layer.Layer<never>
```
