## group

The `group` combinator attempts to lay out a document onto a single line by
removing the contained line breaks. If the result does not fit the page, or
if a `hardLine` prevents flattening the document, `x` is laid out without
any changes.

The `group` function is key to layouts that adapt to available space nicely.

**Signature**

```ts
declare const group: <A>(self: Doc<A>) => Doc<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L1446)

Since v1.0.0