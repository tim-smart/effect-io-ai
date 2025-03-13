Package: `@effect/printer`<br />
Module: `DocStream`<br />

## DocStream.TextStream

Represents a `Doc` containing a string of text.

**Signature**

```ts
export interface TextStream<A> extends DocStream.Variance<A> {
  readonly _tag: "TextStream"
  readonly text: string
  readonly stream: DocStream<A>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/DocStream.ts#L118)

Since v1.0.0