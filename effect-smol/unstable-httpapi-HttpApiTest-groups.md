Package: `effect`<br />
Module: `HttpApiTest`<br />

## HttpApiTest.groups

Creates an in-memory client for testing selected groups of an `HttpApi`.

**Details**

Handlers for the selected groups are taken from the environment; unselected
groups are wired with placeholder handlers that fail if called.

**Signature**

```ts
declare const groups: <ApiId extends string, Groups extends HttpApiGroup.Any, const Names extends ReadonlyArray<HttpApiGroup.Name<Groups>>, SelectedGroups = Extract<Groups, { readonly identifier: Names[number]; }>>(api: HttpApi.HttpApi<ApiId, Groups>, groupNames: Names, options?: { readonly baseUrl?: string | URL | undefined; } | undefined) => Effect.Effect<Simplify<{ readonly [Group in Extract<Groups, { readonly topLevel: false; }> as HttpApiGroup.Name<Group>]: HttpApiClient.Client.Group<Group, Group["identifier"], never, never>; } & { readonly [Method in HttpApiClient.Client.TopLevelMethods<Groups, never, never> as Method[0]]: Method[1]; }>, never, Scope | Path | FileSystem | HttpApiGroup.ToService<ApiId, SelectedGroups> | HttpApiEndpoint.Middleware<HttpApiGroup.Endpoints<Groups>> | MiddlewareClient<HttpApiEndpoint.Middleware<HttpApiGroup.Endpoints<Groups>>> | Generator | HttpPlatform>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiTest.ts#L41)

Since v4.0.0