Package: `effect`<br />
Module: `HttpApi`<br />

## HttpApi.reflect

Describes the groups and endpoints in an `HttpApi`.

**Details**

The callbacks receive each group or endpoint with merged annotations, endpoint
middleware, and response schemas grouped by HTTP status.

**Signature**

```ts
declare const reflect: <Id extends string, Groups extends HttpApiGroup.Constraint>(self: HttpApi<Id, Groups>, options: { readonly predicate?: Predicate.Predicate<{ readonly endpoint: HttpApiEndpoint.Top; readonly group: HttpApiGroup.Top; }> | undefined; readonly onGroup: (options: { readonly group: HttpApiGroup.Top; readonly mergedAnnotations: Context.Context<never>; }) => void; readonly onEndpoint: (options: { readonly group: HttpApiGroup.Top; readonly endpoint: HttpApiEndpoint.Top; readonly mergedAnnotations: Context.Context<never>; readonly middleware: ReadonlySet<HttpApiMiddleware.AnyService>; readonly successes: ReadonlyMap<number, readonly [Schema.Top, ...Array<Schema.Top>]>; readonly errors: ReadonlyMap<number, readonly [Schema.Top, ...Array<Schema.Top>]>; }) => void; }) => void
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApi.ts#L247)

Since v4.0.0