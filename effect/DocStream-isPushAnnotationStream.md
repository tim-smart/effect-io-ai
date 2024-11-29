# isPushAnnotationStream

Returns `true` if the specified `DocStream` is a `PushAnnotationStream`, `false` otherwise.

To import and use `isPushAnnotationStream` from the "DocStream" module:

ts
import \* as DocStream from "@effect/printer/DocStream"
// Can be accessed like this
DocStream.isPushAnnotationStream
undefined

**Signature**

```ts
export declare const isPushAnnotationStream: <A>(self: DocStream<A>) => self is PushAnnotationStream<A>
```
