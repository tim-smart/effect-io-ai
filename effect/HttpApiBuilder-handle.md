# handle

Add the implementation for an `HttpApiEndpoint` to a `Handlers` group.

To import and use `handle` from the "HttpApiBuilder" module:

```ts
import * as HttpApiBuilder from "@effect/platform/HttpApiBuilder"
// Can be accessed like this
HttpApiBuilder.handle
```

**Signature**

```ts
export declare const handle: {
  <Endpoints extends HttpApiEndpoint.HttpApiEndpoint.All, const Name extends Endpoints["name"], E, R>(
    name: Name,
    handler: HttpApiEndpoint.HttpApiEndpoint.HandlerWithName<Endpoints, Name, E, R>
  ): <EG, RG>(
    self: Handlers<EG, RG, Endpoints>
  ) => Handlers<
    EG | Exclude<E, HttpApiEndpoint.HttpApiEndpoint.ErrorWithName<Endpoints, Name>> | HttpApiDecodeError,
    RG | HttpApiEndpoint.HttpApiEndpoint.ExcludeProvided<R>,
    HttpApiEndpoint.HttpApiEndpoint.ExcludeName<Endpoints, Name>
  >
  <Endpoints extends HttpApiEndpoint.HttpApiEndpoint.All, const Name extends Endpoints["name"], E, R>(
    name: Name,
    handler: HttpApiEndpoint.HttpApiEndpoint.HandlerResponseWithName<Endpoints, Name, E, R>,
    options: { readonly withFullResponse: true }
  ): <EG, RG>(
    self: Handlers<EG, RG, Endpoints>
  ) => Handlers<
    EG | Exclude<E, HttpApiEndpoint.HttpApiEndpoint.ErrorWithName<Endpoints, Name>> | HttpApiDecodeError,
    RG | HttpApiEndpoint.HttpApiEndpoint.ExcludeProvided<R>,
    HttpApiEndpoint.HttpApiEndpoint.ExcludeName<Endpoints, Name>
  >
}
```
