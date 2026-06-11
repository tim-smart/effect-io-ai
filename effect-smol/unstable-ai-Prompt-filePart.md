Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.filePart

Constructs a `FilePart` for prompt file attachments.

**When to use**

Use to create the file-attachment part of a prompt from typed file part
parameters.

**See**

- `makePart` for the generic part constructor

**Signature**

```ts
declare const filePart: (params: PartConstructorParams<FilePart>) => FilePart
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L493)

Since v4.0.0