Package: `effect`<br />
Module: `HttpApiClient`<br />

## HttpApiClient.endpoint

Builds the typed client method for one endpoint in one API group, using the
supplied `HttpClient` and endpoint metadata.

**Signature**

```ts
declare const endpoint: <ApiId extends string, Groups extends HttpApiGroup.Any, const GroupName extends HttpApiGroup.Name<Groups>, const EndpointName extends HttpApiEndpoint.Name<HttpApiGroup.EndpointsWithName<Groups, GroupName>>, E, R>(api: HttpApi.HttpApi<ApiId, Groups>, options: { readonly group: GroupName; readonly endpoint: EndpointName; readonly httpClient: HttpClient.HttpClient.With<E, R>; readonly transformClient?: ((client: HttpClient.HttpClient) => HttpClient.HttpClient) | undefined; readonly transformResponse?: ((effect: Effect.Effect<unknown, unknown, unknown>) => Effect.Effect<unknown, unknown, unknown>) | undefined; readonly baseUrl?: URL | string | undefined; }) => Effect.Effect<Client.Method<HttpApiEndpoint.WithName<HttpApiGroup.Endpoints<HttpApiGroup.WithName<Groups, GroupName>>, EndpointName>, E, R>, never, HttpApiEndpoint.MiddlewareClient<HttpApiEndpoint.WithName<HttpApiGroup.Endpoints<HttpApiGroup.WithName<Groups, GroupName>>, EndpointName>>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiClient.ts#L555)

Since v4.0.0