# reAnnotate

Modify the annotations of a document.

To import and use `reAnnotate` from the "DocStream" module:

ts
import \* as DocStream from "@effect/printer/DocStream"
// Can be accessed like this
DocStream.reAnnotate
undefined

**Signature**

```ts
export declare const reAnnotate: {
  <A, B>(f: (a: A) => B): (self: DocStream<A>) => DocStream<B>
  <A, B>(self: DocStream<A>, f: (a: A) => B): DocStream<B>
}
```
