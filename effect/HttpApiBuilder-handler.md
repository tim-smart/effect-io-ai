Package: `@effect/platform`<br />
Module: `HttpApiBuilder`<br />

## HttpApiBuilder.handler

Create a `Handler` for a single endpoint.

**Signature**

```ts
declare const handler: <ApiId extends string, Groups extends HttpApiGroup.HttpApiGroup.Any, ApiError, ApiR, const GroupName extends Groups["identifier"], const Name extends HttpApiGroup.HttpApiGroup.EndpointsWithName<Groups, GroupName>["name"], R>(_api: HttpApi.HttpApi<ApiId, Groups, ApiError, ApiR>, _groupName: GroupName, _name: Name, f: HttpApiEndpoint.HttpApiEndpoint.HandlerWithName<HttpApiGroup.HttpApiGroup.EndpointsWithName<Groups, GroupName>, Name, ApiError | HttpApiGroup.HttpApiGroup.ErrorWithName<Groups, GroupName>, R>) => HttpApiEndpoint.HttpApiEndpoint.HandlerWithName<HttpApiGroup.HttpApiGroup.EndpointsWithName<Groups, GroupName>, Name, ApiError | HttpApiGroup.HttpApiGroup.ErrorWithName<Groups, GroupName>, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpApiBuilder.ts#L528)

Since v1.0.0