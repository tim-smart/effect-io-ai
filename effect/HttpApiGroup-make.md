# make

An `HttpApiGroup` is a collection of `HttpApiEndpoint`s. You can use an `HttpApiGroup` to
represent a portion of your domain.

The endpoints can be implemented later using the `HttpApiBuilder.group` api.

To import and use `make` from the "HttpApiGroup" module:

```ts
import * as HttpApiGroup from "@effect/platform/HttpApiGroup"
// Can be accessed like this
HttpApiGroup.make
```

**Signature**

```ts
export declare const make: <Name extends string>(identifier: Name) => HttpApiGroup<Name>
```
