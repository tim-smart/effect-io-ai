Package: `@effect/printer-ansi`<br />
Module: `AnsiDoc`<br />

## AnsiDoc.render

Text leaves are rendered verbatim, including control characters. Apply
`sanitize` to untrusted subtrees before writing the result to a terminal.
Use the raw document when embedded terminal sequences are trusted and
intentional.

**Signature**

```ts
declare const render: { (config: AnsiDoc.RenderConfig): (self: AnsiDoc) => string; (self: AnsiDoc, config: AnsiDoc.RenderConfig): string; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer-ansi/src/AnsiDoc.ts#L275)

Since v1.0.0