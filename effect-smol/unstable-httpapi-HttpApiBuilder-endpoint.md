Package: `effect`<br />
Module: `HttpApiBuilder`<br />

## HttpApiBuilder.endpoint

Builds the server-side HTTP effect for a single endpoint in an API group using
the endpoint metadata, middleware, codecs, and supplied handler.

**Signature**

```ts
declare const endpoint: <ApiId extends string, Groups extends HttpApiGroup.Any, const GroupName extends HttpApiGroup.Name<Groups>, const EndpointName extends HttpApiEndpoint.Name<HttpApiGroup.Endpoints<HttpApiGroup.WithName<Groups, GroupName>>>, R, Group extends HttpApiGroup.Any = Extract<Groups, { readonly identifier: GroupName; }>, Endpoint extends HttpApiEndpoint.Any = Extract<HttpApiGroup.Endpoints<Group>, { readonly name: EndpointName; }>>(api: HttpApi.HttpApi<ApiId, Groups>, groupName: GroupName, endpointName: EndpointName, handler: NoInfer<HttpApiEndpoint.HandlerWithName<HttpApiGroup.Endpoints<HttpApiGroup.WithName<Groups, GroupName>>, EndpointName, never, R>>) => Effect.Effect<Effect.Effect<HttpServerResponse, never, HttpServerRequest | HttpRouter.RouteContext | Request.ParsedSearchParams | Exclude<R, HttpApiEndpoint.MiddlewareProvides<Endpoint>>>, never, HttpApiEndpoint.ServerServices<Endpoint> | HttpApiEndpoint.Middleware<Endpoint> | HttpApiEndpoint.MiddlewareServices<Endpoint> | Etag.Generator | FileSystem | HttpPlatform | Path>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiBuilder.ts#L363)

Since v4.0.0