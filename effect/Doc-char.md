Package: `@effect/printer`<br />
Module: `Doc`<br />

## Doc.char

A document containing a single character.

**Invariants**
- Cannot be the newline (`"\n"`) character

Control characters are preserved verbatim. Apply `sanitize` before rendering
a document containing untrusted text to a terminal.

**Signature**

```ts
declare const char: (char: string) => Doc<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L440)

Since v1.0.0