# reflect

Extract metadata from an `HttpApi`, which can be used to generate documentation
or other tooling.

See the `OpenApi` & `HttpApiClient` modules for examples of how to use this function.

To import and use `reflect` from the "HttpApi" module:

ts
import \* as HttpApi from "@effect/platform/HttpApi"
// Can be accessed like this
HttpApi.reflect
undefined

**Signature**

```ts
export declare const reflect: <Groups extends HttpApiGroup.HttpApiGroup.Any, Error, R>(
  self: HttpApi<Groups, Error, R>,
  options: {
    readonly predicate?: Predicate.Predicate<{
      readonly endpoint: HttpApiEndpoint.HttpApiEndpoint.AnyWithProps
      readonly group: HttpApiGroup.HttpApiGroup.AnyWithProps
    }>
    readonly onGroup: (options: {
      readonly group: HttpApiGroup.HttpApiGroup.AnyWithProps
      readonly mergedAnnotations: Context.Context<never>
    }) => void
    readonly onEndpoint: (options: {
      readonly group: HttpApiGroup.HttpApiGroup.AnyWithProps
      readonly endpoint: HttpApiEndpoint.HttpApiEndpoint<string, HttpMethod>
      readonly mergedAnnotations: Context.Context<never>
      readonly middleware: ReadonlySet<HttpApiMiddleware.TagClassAny>
      readonly payloads: ReadonlyMap<string, { readonly encoding: HttpApiSchema.Encoding; readonly ast: AST.AST }>
      readonly successes: ReadonlyMap<
        number,
        { readonly ast: Option.Option<AST.AST>; readonly description: Option.Option<string> }
      >
      readonly errors: ReadonlyMap<
        number,
        { readonly ast: Option.Option<AST.AST>; readonly description: Option.Option<string> }
      >
    }) => void
  }
) => void
```
