Package: `effect`<br />
Module: `HttpApiTest`<br />

## HttpApiTest.groups

Creates an in-memory client for testing selected groups of an `HttpApi`.

**Details**

Handlers for the selected groups are taken from the environment; unselected
groups are wired with placeholder handlers that fail if called.

**Signature**

```ts
declare const groups: <ApiId extends string, Groups extends HttpApiGroup.Constraint, const Identifiers extends ReadonlyArray<HttpApiGroup.Identifier<Groups>>, SelectedGroups extends HttpApiGroup.Constraint = Extract<Groups, { readonly identifier: Identifiers[number]; }>>(api: HttpApi.HttpApi<ApiId, Groups>, groupIdentifiers: Identifiers, options?: { readonly baseUrl?: string | URL | undefined; } | undefined) => Effect.Effect<Simplify<{ readonly [Group in Extract<Groups, { readonly topLevel: false; }> as HttpApiGroup.Identifier<Group>]: HttpApiClient.Client.GroupByEndpoint<Group, never, never>; } & HttpApiClient.Client.TopLevelMethods<Groups, never, never>>, never, Scope | Path | FileSystem | HttpApiGroup.ToService<ApiId, SelectedGroups> | HttpApiEndpoint.Middleware<HttpApiGroup.Endpoints<Groups>> | MiddlewareClient<HttpApiEndpoint.Middleware<HttpApiGroup.Endpoints<Groups>>> | Generator | HttpPlatform>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiTest.ts#L41)

Since v4.0.0