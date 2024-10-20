# annotate

Add an annotation to the endpoint.

To import and use `annotate` from the "HttpApiEndpoint" module:

```ts
import * as HttpApiEndpoint from "@effect/platform/HttpApiEndpoint"
// Can be accessed like this
HttpApiEndpoint.annotate
```

**Signature**

```ts
export declare const annotate: {
  <I, S>(tag: Context.Tag<I, S>, value: S): <A extends HttpApiEndpoint.All>(self: A) => A
  <A extends HttpApiEndpoint.All, I, S>(self: A, tag: Context.Tag<I, S>, value: S): A
}
```
