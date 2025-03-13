Package: `@effect/printer`<br />
Module: `Doc`<br />

## Doc.Nest

Represents a document that is indented by a certain number of columns.

**Signature**

```ts
export interface Nest<A> extends Doc.Variance<A> {
  readonly _tag: "Nest"
  readonly indent: number
  readonly doc: Doc<A>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L228)

Since v1.0.0