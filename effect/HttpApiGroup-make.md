# make

An `HttpApiGroup` is a collection of `HttpApiEndpoint`s. You can use an `HttpApiGroup` to
represent a portion of your domain.

The endpoints can be implemented later using the `HttpApiBuilder.group` api.

To import and use `make` from the "HttpApiGroup" module:

ts
import \* as HttpApiGroup from "@effect/platform/HttpApiGroup"
// Can be accessed like this
HttpApiGroup.make
undefined

**Signature**

```ts
export declare const make: <const Id extends string, const TopLevel extends true | false = false>(
  identifier: Id,
  options?: { readonly topLevel?: TopLevel | undefined }
) => HttpApiGroup<Id, never, never, never, TopLevel>
```
