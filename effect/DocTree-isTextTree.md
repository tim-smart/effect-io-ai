# isTextTree

Returns `true` if the specified `DocTree` is an `TextTree`, `false` otherwise.

To import and use `isTextTree` from the "DocTree" module:

```ts
import * as DocTree from "@effect/printer/DocTree"
// Can be accessed like this
DocTree.isTextTree
```

**Signature**

```ts
export declare const isTextTree: <A>(self: DocTree<A>) => self is TextTree<A>
```
