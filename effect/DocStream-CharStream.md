Package: `@effect/printer`<br />
Module: `DocStream`<br />

## DocStream.CharStream

Represents a `Doc` containing a single character.

**Signature**

```ts
export interface CharStream<A> extends DocStream.Variance<A> {
  readonly _tag: "CharStream"
  readonly char: string
  readonly stream: DocStream<A>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/DocStream.ts#L106)

Since v1.0.0