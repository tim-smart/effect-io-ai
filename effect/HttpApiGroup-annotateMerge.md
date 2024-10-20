# annotateMerge

Merge the annotations of an `HttpApiGroup` with a new context.

To import and use `annotateMerge` from the "HttpApiGroup" module:

```ts
import * as HttpApiGroup from "@effect/platform/HttpApiGroup"
// Can be accessed like this
HttpApiGroup.annotateMerge
```

**Signature**

```ts
export declare const annotateMerge: {
  <I>(context: Context.Context<I>): <A extends HttpApiGroup.Any>(self: A) => A
  <A extends HttpApiGroup.Any, I>(self: A, context: Context.Context<I>): A
}
```
