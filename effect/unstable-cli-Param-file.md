Package: `effect`<br />
Module: `Param`<br />

## Param.file

Creates a file path parameter.

**Details**

This is a convenience function that creates a path parameter with a
`pathType` set to `"file"` and a default type name of `"file"`.

**Example** (Creating file parameters)

```ts
import { Param } from "effect/unstable/cli"

// Basic file parameter
const outputFile = Param.file(Param.flagKind, "output")

// File that must exist
const inputFile = Param.file(Param.flagKind, "input", { mustExist: true })

// Usage: --output result.txt --input existing-file.txt
```

**Signature**

```ts
declare const file: <Kind extends ParamKind>(kind: Kind, name: string, options?: { readonly mustExist?: boolean | undefined; }) => Param<Kind, string>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Param.ts#L678)

Since v4.0.0