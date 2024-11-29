# unAnnotate

Remove all annotations from a `DocTree`.

To import and use `unAnnotate` from the "DocTree" module:

ts
import \* as DocTree from "@effect/printer/DocTree"
// Can be accessed like this
DocTree.unAnnotate
undefined

**Signature**

```ts
export declare const unAnnotate: <A>(self: DocTree<A>) => DocTree<never>
```
