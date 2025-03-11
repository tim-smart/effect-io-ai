## WithPageWidth

Represents a document that reacts to the current page width.

**Signature**

```ts
export interface WithPageWidth<A> extends Doc.Variance<A> {
  readonly _tag: "WithPageWidth"
  readonly react: (pageWidth: PageWidth) => Doc<A>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L280)

Since v1.0.0