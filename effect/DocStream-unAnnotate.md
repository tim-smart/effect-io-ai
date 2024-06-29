# unAnnotate

Remove all annotations from a document.

To import and use `unAnnotate` from the "DocStream" module:

```ts
import * as DocStream from "@effect/printer/DocStream"
// Can be accessed like this
DocStream.unAnnotate
```

**Signature**

```ts
export declare const unAnnotate: <A>(self: DocStream<A>) => DocStream<never>
```
