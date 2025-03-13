Package: `@effect/printer`<br />
Module: `Doc`<br />

## Doc.annotate

Adds an annotation to a `Doc`. The annotation can then be used by the rendering
algorithm to, for example, add color to certain parts of the output.

**Note** This function is relevant only for custom formats with their own annotations,
and is not relevant for basic pretty printing.

**Signature**

```ts
declare const annotate: { <A>(annotation: A): (self: Doc<A>) => Doc<A>; <A>(self: Doc<A>, annotation: A): Doc<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L2062)

Since v1.0.0