Package: `@effect/printer`<br />
Module: `Doc`<br />

## Doc.Empty

Represents the empty document.

Conceptually, the `Empty` document can be thought of as the unit of `Cat`.

**Signature**

```ts
export interface Empty<A> extends Doc.Variance<A> {
  readonly _tag: "Empty"
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L150)

Since v1.0.0