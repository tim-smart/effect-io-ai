# prefix

Add a prefix to the path of the endpoint.

To import and use `prefix` from the "HttpApiEndpoint" module:

```ts
import * as HttpApiEndpoint from "@effect/platform/HttpApiEndpoint"
// Can be accessed like this
HttpApiEndpoint.prefix
```

**Signature**

```ts
export declare const prefix: {
  (prefix: HttpRouter.PathInput): <A extends HttpApiEndpoint.All>(self: A) => A
  <A extends HttpApiEndpoint.All>(self: A, prefix: HttpRouter.PathInput): A
}
```
