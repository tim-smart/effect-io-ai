## Text

Represents a document containing a string of text.

**Invariants**
- Text cannot be less than two characters long
- Text cannot contain a newline (`"\n"`) character

**Signature**

```ts
export interface Text<A> extends Doc.Variance<A> {
  readonly _tag: "Text"
  readonly text: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L178)

Since v1.0.0