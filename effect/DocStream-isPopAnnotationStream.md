# isPopAnnotationStream

Returns `true` if the specified `DocStream` is a `PopAnnotationStream`, `false` otherwise.

To import and use `isPopAnnotationStream` from the "DocStream" module:

ts
import \* as DocStream from "@effect/printer/DocStream"
// Can be accessed like this
DocStream.isPopAnnotationStream
undefined

**Signature**

```ts
export declare const isPopAnnotationStream: <A>(self: DocStream<A>) => self is PopAnnotationStream<A>
```
