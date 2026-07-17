Package: `effect`<br />
Module: `HttpApiClient`<br />

## HttpApiClient.endpoint

Builds the typed client method for one endpoint in one API group, using the
supplied `HttpClient` and endpoint metadata.

**Signature**

```ts
declare const endpoint: <ApiId extends string, Groups extends HttpApiGroup.Constraint, const GroupIdentifier extends HttpApiGroup.Identifier<Groups>, const EndpointIdentifier extends HttpApiGroup.EndpointsWithIdentifier<Groups, GroupIdentifier>["identifier"], E, R>(api: HttpApi.HttpApi<ApiId, Groups>, options: { readonly group: GroupIdentifier; readonly endpoint: EndpointIdentifier; readonly httpClient: HttpClient.HttpClient.With<E, R>; readonly transformClient?: ((client: HttpClient.HttpClient.With<E, R>) => HttpClient.HttpClient.With<E, R>) | undefined; readonly transformResponse?: ((effect: Effect.Effect<unknown, unknown, unknown>) => Effect.Effect<unknown, unknown, unknown>) | undefined; readonly baseUrl?: URL | string | undefined; }) => EndpointReturn<Groups, GroupIdentifier, EndpointIdentifier, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiClient.ts#L592)

Since v4.0.0