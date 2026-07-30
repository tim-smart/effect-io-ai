Package: `@effect/printer`<br />
Module: `Doc`<br />

## Doc.Nesting

Represents a document that reacts to the current nesting level.

**Signature**

```ts
export interface Nesting<A> extends Doc.Variance<A> {
  readonly _tag: "Nesting"
  readonly react: (level: number) => Doc<A>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L291)

Since v1.0.0