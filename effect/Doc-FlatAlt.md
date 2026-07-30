Package: `@effect/printer`<br />
Module: `Doc`<br />

## Doc.FlatAlt

Represents a flattened alternative of two documents. The layout algorithms
will choose the first document, but when flattened (via `group`) the second
document will be preferreinternal.

The layout algorithms operate under the assumption that the first alternative
is less wide than the flattened second alternative.

**Signature**

```ts
export interface FlatAlt<A> extends Doc.Variance<A> {
  readonly _tag: "FlatAlt"
  readonly left: Doc<A>
  readonly right: Doc<A>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L204)

Since v1.0.0