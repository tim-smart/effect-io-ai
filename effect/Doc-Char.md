## Char

Represents a document containing a single character.

**Invariants**
- Cannot be the newline (`"\n"`) character

**Signature**

```ts
export interface Char<A> extends Doc.Variance<A> {
  readonly _tag: "Char"
  readonly char: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L163)

Since v1.0.0