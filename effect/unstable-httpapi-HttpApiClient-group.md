Package: `effect`<br />
Module: `HttpApiClient`<br />

## HttpApiClient.group

Builds a typed client object for a single API group from the supplied
`HttpClient`, filtering the API to that group.

**Signature**

```ts
declare const group: <ApiId extends string, Groups extends HttpApiGroup.Constraint, const GroupIdentifier extends HttpApiGroup.Identifier<Groups>, E, R>(api: HttpApi.HttpApi<ApiId, Groups>, options: { readonly group: GroupIdentifier; readonly httpClient: HttpClient.HttpClient.With<E, R>; readonly transformResponse?: ((effect: Effect.Effect<unknown, unknown, unknown>) => Effect.Effect<unknown, unknown, unknown>) | undefined; readonly baseUrl?: URL | string | undefined; }) => Effect.Effect<Client.Group<HttpApiGroup.WithIdentifier<Groups, GroupIdentifier>, E, R>, never, HttpApiGroup.MiddlewareClient<HttpApiGroup.WithIdentifier<Groups, GroupIdentifier>>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiClient.ts#L542)

Since v4.0.0