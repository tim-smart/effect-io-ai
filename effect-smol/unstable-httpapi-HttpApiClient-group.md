Package: `effect`<br />
Module: `HttpApiClient`<br />

## HttpApiClient.group

Builds a typed client object for a single API group from the supplied
`HttpClient`, filtering the API to that group.

**Signature**

```ts
declare const group: <ApiId extends string, Groups extends HttpApiGroup.Any, const GroupName extends HttpApiGroup.Name<Groups>, E, R>(api: HttpApi.HttpApi<ApiId, Groups>, options: { readonly group: GroupName; readonly httpClient: HttpClient.HttpClient.With<E, R>; readonly transformResponse?: ((effect: Effect.Effect<unknown, unknown, unknown>) => Effect.Effect<unknown, unknown, unknown>) | undefined; readonly baseUrl?: URL | string | undefined; }) => Effect.Effect<Client.Group<Groups, GroupName, E, R>, never, HttpApiGroup.MiddlewareClient<HttpApiGroup.WithName<Groups, GroupName>>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiClient.ts#L517)

Since v4.0.0