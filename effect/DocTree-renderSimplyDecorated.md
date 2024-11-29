# renderSimplyDecorated

The simplest possible tree-based renderer.

For example, here is a document annotated with `void` and thee behavior is
to surround annotated regions with »>>>« and »<<<«.

To import and use `renderSimplyDecorated` from the "DocTree" module:

ts
import \* as DocTree from "@effect/printer/DocTree"
// Can be accessed like this
DocTree.renderSimplyDecorated
undefined

**Example**

```ts
import * as Doc from "@effect/printer/Doc"
import * as DocTree from "@effect/printer/DocTree"
import * as Layout from "@effect/printer/Layout"
import { identity, pipe } from "effect/Function"
import * as String from "@effect/typeclass/data/String"

const doc: Doc.Doc<void> = Doc.hsep([
  Doc.text("hello"),
  pipe(Doc.text("world"), Doc.annotate(undefined), Doc.cat(Doc.char("!")))
])

const tree = DocTree.treeForm(Layout.pretty(Layout.defaultOptions)(doc))

const rendered = pipe(
  tree,
  DocTree.renderSimplyDecorated(String.Monoid, identity, (_, x) => `>>>${x}<<<`)
)

assert.strictEqual(rendered, "hello >>>world<<<!")
```

**Signature**

```ts
export declare const renderSimplyDecorated: {
  <A, M>(
    M: monoid.Monoid<M>,
    renderText: (text: string) => M,
    renderAnnotation: (annotation: A, out: M) => M
  ): (self: DocTree<A>) => M
  <A, M>(
    self: DocTree<A>,
    M: monoid.Monoid<M>,
    renderText: (text: string) => M,
    renderAnnotation: (annotation: A, out: M) => M
  ): M
}
```
