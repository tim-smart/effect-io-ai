# annotation

Annotate the specified `DocTree` with an annotation of type `A`.

To import and use `annotation` from the "DocTree" module:

ts
import \* as DocTree from "@effect/printer/DocTree"
// Can be accessed like this
DocTree.annotation
undefined

**Signature**

```ts
export declare const annotation: {
  <A>(annotation: A): <B>(self: DocTree<B>) => DocTree<A | B>
  <A, B>(self: DocTree<A>, annotation: B): DocTree<A | B>
}
```
