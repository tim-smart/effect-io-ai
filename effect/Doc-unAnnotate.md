Package: `@effect/printer`<br />
Module: `Doc`<br />

## Doc.unAnnotate

Removes all annotations from a document.

**Note**: with each invocation, the entire document tree is traversed.
If possible, it is preferable to unannotate a document after producing the
layout using `unAnnotateS`.

**Signature**

```ts
declare const unAnnotate: <A>(self: Doc<A>) => Doc<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L2119)

Since v1.0.0