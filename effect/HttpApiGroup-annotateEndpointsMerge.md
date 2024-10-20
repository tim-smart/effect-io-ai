# annotateEndpointsMerge

For each endpoint in an `HttpApiGroup`, update the annotations with a new
context.

Note that this will only update the annotations before this api is called.

To import and use `annotateEndpointsMerge` from the "HttpApiGroup" module:

```ts
import * as HttpApiGroup from "@effect/platform/HttpApiGroup"
// Can be accessed like this
HttpApiGroup.annotateEndpointsMerge
```

**Signature**

```ts
export declare const annotateEndpointsMerge: {
  <I>(context: Context.Context<I>): <A extends HttpApiGroup.Any>(self: A) => A
  <A extends HttpApiGroup.Any, I>(self: A, context: Context.Context<I>): A
}
```
