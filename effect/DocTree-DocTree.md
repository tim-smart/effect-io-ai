Package: `@effect/printer`<br />
Module: `DocTree`<br />

## DocTree.DocTree

Represents a document that has been laid out into a tree-like structure.

A `DocStream` is a linked list of different annotated cons cells (i.e.
`TextStream` and then some further `DocStream`, `LineStream` and then some
further `DocStream`, etc.). The `DocStream` format is quite suitable as a
target for a layout engine, but is not suitable for rendering to a more
structured format, such as HTML, where we do not want to perform a lookahead
until the end of some pre-defined markup. These formats would benefit more
from a tree-like structure that explicitly marks its contents as annotated.
A `DocTree` is therefore much more suitable for this use case.

**Signature**

```ts
type DocTree<A> = | EmptyTree<A>
  | CharTree<A>
  | TextTree<A>
  | LineTree<A>
  | AnnotationTree<A>
  | ConcatTree<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/DocTree.ts#L44)

Since v1.0.0