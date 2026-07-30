Package: `@effect/printer`<br />
Module: `Doc`<br />

## Doc.text

A document containing a string of text.

**Invariants**
- Text cannot be less than two characters long
- Text cannot contain a newline (`"\n"`) character

Control characters are preserved verbatim. Apply `sanitize` before rendering
a document containing untrusted text to a terminal.

**Signature**

```ts
declare const text: (text: string) => Doc<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L455)

Since v1.0.0