Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.file

Creates a file-system selection prompt and returns the selected path.

**Details**

The prompt can be configured to select files, directories, or either path
type.

**Signature**

```ts
declare const file: (options?: FileOptions) => Prompt<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L811)

Since v4.0.0