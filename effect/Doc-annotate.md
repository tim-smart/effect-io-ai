# annotate

Adds an annotation to a `Doc`. The annotation can then be used by the rendering
algorithm to, for example, add color to certain parts of the output.

**Note** This function is relevant only for custom formats with their own annotations,
and is not relevant for basic pretty printing.

To import and use `annotate` from the "Doc" module:

ts
import \* as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.annotate
undefined

**Signature**

```ts
export declare const annotate: {
  <A>(annotation: A): (self: Doc<A>) => Doc<A>
  <A>(self: Doc<A>, annotation: A): Doc<A>
}
```
