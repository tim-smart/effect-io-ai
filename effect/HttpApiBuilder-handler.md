# handler

Create a `Handler` for a single endpoint.

To import and use `handler` from the "HttpApiBuilder" module:

```ts
import * as HttpApiBuilder from "@effect/platform/HttpApiBuilder"
// Can be accessed like this
HttpApiBuilder.handler
```

**Signature**

```ts
export declare const handler: <
  Groups extends HttpApiGroup.HttpApiGroup.Any,
  ApiError,
  ApiR,
  const GroupName extends Groups["identifier"],
  const Name extends HttpApiGroup.HttpApiGroup.EndpointsWithName<Groups, GroupName>["name"],
  R
>(
  _api: HttpApi.HttpApi<Groups, ApiError, ApiR>,
  _groupName: GroupName,
  _name: Name,
  f: HttpApiEndpoint.HttpApiEndpoint.HandlerWithName<
    HttpApiGroup.HttpApiGroup.EndpointsWithName<Groups, GroupName>,
    Name,
    ApiError | HttpApiGroup.HttpApiGroup.ErrorWithName<Groups, GroupName>,
    R
  >
) => HttpApiEndpoint.HttpApiEndpoint.HandlerWithName<
  HttpApiGroup.HttpApiGroup.EndpointsWithName<Groups, GroupName>,
  Name,
  ApiError | HttpApiGroup.HttpApiGroup.ErrorWithName<Groups, GroupName>,
  R
>
```
