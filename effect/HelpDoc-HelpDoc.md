Package: `@effect/cli`<br />
Module: `HelpDoc`<br />

## HelpDoc.HelpDoc

A `HelpDoc` models the full documentation for a command-line application.

`HelpDoc` is composed of optional header and footers, and in-between, a
list of HelpDoc-level content items.

HelpDoc-level content items, in turn, can be headers, paragraphs, description
lists, and enumerations.

A `HelpDoc` can be converted into plaintext, JSON, and HTML.

**Signature**

```ts
type HelpDoc = Empty | Header | Paragraph | DescriptionList | Enumeration | Sequence
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cli/src/HelpDoc.ts#L23)

Since v1.0.0