Package: `@effect/printer`<br />
Module: `Doc`<br />

## Doc.string

Constructs a document containing a string of text.

**Note**: newline characters (`\n`) contained in the provided string will be
disregarded (i.e. not rendered) in the output document.

Control characters are preserved verbatim. Apply `sanitize` before rendering
a document containing untrusted text to a terminal.

**Signature**

```ts
declare const string: (str: string) => Doc<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L469)

Since v1.0.0