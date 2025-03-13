Package: `@effect/printer`<br />
Module: `Doc`<br />

## Doc.Annotated

Represents a document with an associated annotation.

**Signature**

```ts
export interface Annotated<A> extends Doc.Variance<A> {
  readonly _tag: "Annotated"
  readonly annotation: A
  readonly doc: Doc<A>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L302)

Since v1.0.0