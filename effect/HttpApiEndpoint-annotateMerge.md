# annotateMerge

Merge the annotations of the endpoint with the provided context.

To import and use `annotateMerge` from the "HttpApiEndpoint" module:

```ts
import * as HttpApiEndpoint from "@effect/platform/HttpApiEndpoint"
// Can be accessed like this
HttpApiEndpoint.annotateMerge
```

**Signature**

```ts
export declare const annotateMerge: {
  <I>(context: Context.Context<I>): <A extends HttpApiEndpoint.All>(self: A) => A
  <A extends HttpApiEndpoint.All, I>(self: A, context: Context.Context<I>): A
}
```
