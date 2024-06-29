# isConcatTree

Returns `true` if the specified `DocTree` is an `ConcatTree`, `false` otherwise.

To import and use `isConcatTree` from the "DocTree" module:

```ts
import * as DocTree from "@effect/printer/DocTree"
// Can be accessed like this
DocTree.isConcatTree
```

**Signature**

```ts
export declare const isConcatTree: <A>(self: DocTree<A>) => self is ConcatTree<A>
```
