# concat

Horizontally concatenates multiple `DocTree`s.

To import and use `concat` from the "DocTree" module:

ts
import \* as DocTree from "@effect/printer/DocTree"
// Can be accessed like this
DocTree.concat
undefined

**Signature**

```ts
export declare const concat: <A>(trees: ReadonlyArray<DocTree<A>>) => DocTree<A>
```
