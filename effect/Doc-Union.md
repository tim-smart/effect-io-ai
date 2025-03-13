Package: `@effect/printer`<br />
Module: `Doc`<br />

## Doc.Union

Represents the union of two documents. Used to implement layout alternatives
for `group`.

**Invariants**
- The first lines of the first document should be longer than the first lines
  of the second document so that the layout algorithm can pick the document
  with the best fit.

**Signature**

```ts
export interface Union<A> extends Doc.Variance<A> {
  readonly _tag: "Union"
  readonly left: Doc<A>
  readonly right: Doc<A>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L246)

Since v1.0.0