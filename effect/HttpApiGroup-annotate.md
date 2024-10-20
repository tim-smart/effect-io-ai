# annotate

Add an annotation to an `HttpApiGroup`.

To import and use `annotate` from the "HttpApiGroup" module:

```ts
import * as HttpApiGroup from "@effect/platform/HttpApiGroup"
// Can be accessed like this
HttpApiGroup.annotate
```

**Signature**

```ts
export declare const annotate: {
  <I, S>(tag: Context.Tag<I, S>, value: S): <A extends HttpApiGroup.Any>(self: A) => A
  <A extends HttpApiGroup.Any, I, S>(self: A, tag: Context.Tag<I, S>, value: S): A
}
```
