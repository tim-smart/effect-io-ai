# alterAnnotations

Changes the annotation of a document to a different annotation, or to
none at all.

To import and use `alterAnnotations` from the "DocStream" module:

```ts
import * as DocStream from "@effect/printer/DocStream"
// Can be accessed like this
DocStream.alterAnnotations
```

**Signature**

```ts
export declare const alterAnnotations: {
  <A, B>(f: (a: A) => Option<B>): (self: DocStream<A>) => DocStream<B>
  <A, B>(self: DocStream<A>, f: (a: A) => Option<B>): DocStream<B>
}
```
