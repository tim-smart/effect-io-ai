# reflect

Extract metadata from an `HttpApi`, which can be used to generate documentation
or other tooling.

See the `OpenApi` & `HttpApiClient` modules for examples of how to use this function.

To import and use `reflect` from the "HttpApi" module:

```ts
import * as HttpApi from "@effect/platform/HttpApi"
// Can be accessed like this
HttpApi.reflect
```

**Signature**

```ts
export declare const reflect: <Groups extends HttpApiGroup.HttpApiGroup.Any, Error, R>(
  self: HttpApi<Groups, Error, R>,
  options: {
    readonly onGroup: (options: {
      readonly group: HttpApiGroup.HttpApiGroup.AnyWithProps
      readonly mergedAnnotations: Context.Context<never>
    }) => void
    readonly onEndpoint: (options: {
      readonly group: HttpApiGroup.HttpApiGroup.AnyWithProps
      readonly endpoint: HttpApiEndpoint.HttpApiEndpoint<string, HttpMethod>
      readonly mergedAnnotations: Context.Context<never>
      readonly middleware: ReadonlySet<HttpApiMiddleware.TagClassAny>
      readonly successes: ReadonlyMap<number, Option.Option<AST.AST>>
      readonly errors: ReadonlyMap<number, Option.Option<AST.AST>>
    }) => void
  }
) => void
```
