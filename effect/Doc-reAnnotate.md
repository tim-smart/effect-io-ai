## reAnnotate

Changes the annotation of a document. Useful for modifying documents embedded
with one form of annotation with a more general annotation.

**Note** that with each invocation, the entire document tree is traversed.
If possible, it is preferable to reannotate a document after producing the
layout using `reAnnotateS`.

**Signature**

```ts
declare const reAnnotate: { <A, B>(f: (a: A) => B): (self: Doc<A>) => Doc<B>; <A, B>(self: Doc<A>, f: (a: A) => B): Doc<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L2104)

Since v1.0.0