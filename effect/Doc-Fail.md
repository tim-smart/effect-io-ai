Package: `@effect/printer`<br />
Module: `Doc`<br />

## Doc.Fail

Represents a document that cannot be rendered. Generally occurs when
flattening a line. The layout algorithms will reject this document and choose
a more suitable rendering.

**Signature**

```ts
export interface Fail<A> extends Doc.Variance<A> {
  readonly _tag: "Fail"
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L138)

Since v1.0.0