# isEmptyTree

Returns `true` if the specified `DocTree` is an `EmptyTree`, `false` otherwise.

To import and use `isEmptyTree` from the "DocTree" module:

ts
import \* as DocTree from "@effect/printer/DocTree"
// Can be accessed like this
DocTree.isEmptyTree
undefined

**Signature**

```ts
export declare const isEmptyTree: <A>(self: DocTree<A>) => self is EmptyTree<A>
```
