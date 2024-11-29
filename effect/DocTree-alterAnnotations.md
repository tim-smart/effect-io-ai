# alterAnnotations

Change the annotation of a document to a different annotation, or none at
all.

To import and use `alterAnnotations` from the "DocTree" module:

ts
import \* as DocTree from "@effect/printer/DocTree"
// Can be accessed like this
DocTree.alterAnnotations
undefined

**Signature**

```ts
export declare const alterAnnotations: {
  <A, B>(f: (a: A) => Iterable<B>): (self: DocTree<A>) => DocTree<B>
  <A, B>(self: DocTree<A>, f: (a: A) => Iterable<B>): DocTree<B>
}
```
