# isCharTree

Returns `true` if the specified `DocTree` is an `CharTree`, `false` otherwise.

To import and use `isCharTree` from the "DocTree" module:

```ts
import * as DocTree from "@effect/printer/DocTree"
// Can be accessed like this
DocTree.isCharTree
```

**Signature**

```ts
export declare const isCharTree: <A>(self: DocTree<A>) => self is CharTree<A>
```
