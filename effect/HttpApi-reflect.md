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
export declare const reflect: <Groups extends HttpApiGroup.HttpApiGroup.Any, Error, ErrorR>(
  self: HttpApi<Groups, Error, ErrorR>,
  options: {
    readonly onGroup: (options: {
      readonly group: HttpApiGroup.HttpApiGroup<string, any>
      readonly mergedAnnotations: Context.Context<never>
    }) => void
    readonly onEndpoint: (options: {
      readonly group: HttpApiGroup.HttpApiGroup<string, any>
      readonly endpoint: HttpApiEndpoint.HttpApiEndpoint<string, HttpMethod>
      readonly mergedAnnotations: Context.Context<never>
      readonly successAST: Option.Option<AST.AST>
      readonly successStatus: number
      readonly successEncoding: HttpApiSchema.Encoding
      readonly errors: ReadonlyMap<number, Option.Option<AST.AST>>
    }) => void
  }
) => void
```
