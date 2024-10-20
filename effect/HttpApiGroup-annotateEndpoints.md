# annotateEndpoints

For each endpoint in an `HttpApiGroup`, add an annotation.

Note that this will only add the annotation to the endpoints before this api
is called.

To import and use `annotateEndpoints` from the "HttpApiGroup" module:

```ts
import * as HttpApiGroup from "@effect/platform/HttpApiGroup"
// Can be accessed like this
HttpApiGroup.annotateEndpoints
```

**Signature**

```ts
export declare const annotateEndpoints: {
  <I, S>(tag: Context.Tag<I, S>, value: S): <A extends HttpApiGroup.Any>(self: A) => A
  <A extends HttpApiGroup.Any, I, S>(self: A, tag: Context.Tag<I, S>, value: S): A
}
```
