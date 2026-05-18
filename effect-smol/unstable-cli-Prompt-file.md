Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.file

Creates a file-system selection prompt and returns the selected path.

The prompt can be configured to select files, directories, or either path
type.

**Signature**

```ts
declare const file: (options?: FileOptions) => Prompt<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L824)

Since v4.0.0