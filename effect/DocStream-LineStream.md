Package: `@effect/printer`<br />
Module: `DocStream`<br />

## DocStream.LineStream

Represents a `Doc` containing a single line. The `indentation`
represents the indentation level for the subsequent line in the
`Doc`.

**Signature**

```ts
export interface LineStream<A> extends DocStream.Variance<A> {
  readonly _tag: "LineStream"
  readonly indentation: number
  readonly stream: DocStream<A>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/DocStream.ts#L132)

Since v1.0.0