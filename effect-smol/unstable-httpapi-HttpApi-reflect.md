Package: `effect`<br />
Module: `HttpApi`<br />

## HttpApi.reflect

Walks the groups and endpoints in an `HttpApi`.

The callbacks receive each group or endpoint with merged annotations, endpoint
middleware, and response schemas grouped by HTTP status.

**Signature**

```ts
declare const reflect: <Id extends string, Groups extends HttpApiGroup.Any>(self: HttpApi<Id, Groups>, options: { readonly predicate?: Predicate.Predicate<{ readonly endpoint: HttpApiEndpoint.AnyWithProps; readonly group: HttpApiGroup.AnyWithProps; }> | undefined; readonly onGroup: (options: { readonly group: HttpApiGroup.AnyWithProps; readonly mergedAnnotations: Context.Context<never>; }) => void; readonly onEndpoint: (options: { readonly group: HttpApiGroup.AnyWithProps; readonly endpoint: HttpApiEndpoint.AnyWithProps; readonly mergedAnnotations: Context.Context<never>; readonly middleware: ReadonlySet<HttpApiMiddleware.AnyService>; readonly successes: ReadonlyMap<number, readonly [Schema.Top, ...Array<Schema.Top>]>; readonly errors: ReadonlyMap<number, readonly [Schema.Top, ...Array<Schema.Top>]>; }) => void; }) => void
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApi.ts#L233)

Since v4.0.0