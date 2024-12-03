# isLineTree

Returns `true` if the specified `DocTree` is an `LineTree`, `false` otherwise.

To import and use `isLineTree` from the "DocTree" module:

```ts
import * as DocTree from "@effect/printer/DocTree"
// Can be accessed like this
DocTree.isLineTree
```

**Signature**

```ts
export declare const isLineTree: <A>(self: DocTree<A>) => self is LineTree<A>
```
