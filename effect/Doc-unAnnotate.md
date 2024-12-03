# unAnnotate

Removes all annotations from a document.

**Note**: with each invocation, the entire document tree is traversed.
If possible, it is preferable to unannotate a document after producing the
layout using `unAnnotateS`.

To import and use `unAnnotate` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.unAnnotate
```

**Signature**

```ts
export declare const unAnnotate: <A>(self: Doc<A>) => Doc<never>
```
