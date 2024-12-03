# reAnnotate

Change the annotation of a `DocTree`.

To import and use `reAnnotate` from the "DocTree" module:

```ts
import * as DocTree from "@effect/printer/DocTree"
// Can be accessed like this
DocTree.reAnnotate
```

**Signature**

```ts
export declare const reAnnotate: {
  <A, B>(f: (a: A) => B): (self: DocTree<A>) => DocTree<B>
  <A, B>(self: DocTree<A>, f: (a: A) => B): DocTree<B>
}
```
