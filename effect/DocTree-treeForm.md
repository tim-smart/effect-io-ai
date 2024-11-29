# treeForm

Converts a `DocStream<A>` into a `DocTree<A>`.

To import and use `treeForm` from the "DocTree" module:

ts
import \* as DocTree from "@effect/printer/DocTree"
// Can be accessed like this
DocTree.treeForm
undefined

**Signature**

```ts
export declare const treeForm: <A>(stream: DocStream.DocStream<A>) => DocTree<A>
```
