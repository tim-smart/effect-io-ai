Package: `@effect/printer`<br />
Module: `Doc`<br />

## Doc.alterAnnotations

Change the annotations of a document. Individual annotations can be removed,
changed, or replaced by multiple ones.

This is a general function that combines `unAnnotate` and `reAnnotate`, and
is useful for mapping semantic annotations (such as »this is a keyword«) to
display annotations (such as »this is red and underlined«) because some
backends may not care about certain annotations while others may.

Annotations earlier in the new list will be applied earlier, so returning
`[Bold, Green]` will result in a bold document that contains green text, and
not vice versa.

Since this traverses the entire document tree, including the parts that are
not rendered (due to other layouts having better fit), it is preferable to
reannotate a document **after** producing the layout by using
`alterAnnotations` from the `SimpleDocStream` module.

**Signature**

```ts
declare const alterAnnotations: { <A, B>(f: (a: A) => Iterable<B>): (self: Doc<A>) => Doc<B>; <A, B>(self: Doc<A>, f: (a: A) => Iterable<B>): Doc<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L2088)

Since v1.0.0