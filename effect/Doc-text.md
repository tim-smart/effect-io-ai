## text

A document containing a string of text.

**Invariants**
- Text cannot be less than two characters long
- Text cannot contain a newline (`"\n"`) character

**Signature**

```ts
declare const text: (text: string) => Doc<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L449)

Since v1.0.0