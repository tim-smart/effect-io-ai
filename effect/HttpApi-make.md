# make

An `HttpApi` is a collection of `HttpApiEndpoint`s. You can use an `HttpApi` to
represent a portion of your domain.

The endpoints can be implemented later using the `HttpApiBuilder.make` api.

To import and use `make` from the "HttpApi" module:

```ts
import * as HttpApi from "@effect/platform/HttpApi"
// Can be accessed like this
HttpApi.make
```

**Signature**

```ts
export declare const make: <const Id extends string>(identifier: Id) => HttpApi<Id, never, HttpApiDecodeError>
```
