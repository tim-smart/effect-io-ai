Package: `effect`<br />
Module: `HttpApiBuilder`<br />

## HttpApiBuilder.endpoint

Builds the server-side HTTP effect for a single endpoint in an API group using
the endpoint metadata, middleware, codecs, and supplied handler.

**Signature**

```ts
declare const endpoint: <ApiId extends string, Groups extends HttpApiGroup.Constraint, const GroupIdentifier extends HttpApiGroup.Identifier<Groups>, const EndpointIdentifier extends HttpApiGroup.Endpoints<HttpApiGroup.WithIdentifier<Groups, GroupIdentifier>>["identifier"], R>(api: HttpApi.HttpApi<ApiId, Groups>, groupIdentifier: GroupIdentifier, endpointIdentifier: EndpointIdentifier, handler: NoInfer<HttpApiEndpoint.HandlerWithIdentifier<HttpApiGroup.Endpoints<HttpApiGroup.WithIdentifier<Groups, GroupIdentifier>>, EndpointIdentifier, never, R>>) => EndpointReturn<Groups, GroupIdentifier, EndpointIdentifier, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiBuilder.ts#L436)

Since v4.0.0