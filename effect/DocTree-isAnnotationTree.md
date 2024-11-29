# isAnnotationTree

Returns `true` if the specified `DocTree` is an `AnnotationTree`, `false` otherwise.

To import and use `isAnnotationTree` from the "DocTree" module:

ts
import \* as DocTree from "@effect/printer/DocTree"
// Can be accessed like this
DocTree.isAnnotationTree
undefined

**Signature**

```ts
export declare const isAnnotationTree: <A>(self: DocTree<A>) => self is AnnotationTree<A>
```
