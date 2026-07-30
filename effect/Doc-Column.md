Package: `@effect/printer`<br />
Module: `Doc`<br />

## Doc.Column

Represents a document that reacts to the current cursor position.

**Signature**

```ts
export interface Column<A> extends Doc.Variance<A> {
  readonly _tag: "Column"
  readonly react: (position: number) => Doc<A>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L258)

Since v1.0.0