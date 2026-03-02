Package: `effect`<br />
Module: `Param`<br />

## Param.file

Creates a file path parameter.

This is a convenience function that creates a path parameter with a
`pathType` set to `"file"` and a default type name of `"file"`.

**Example**

```ts
import * as Param from "effect/unstable/cli/Param"

// @internal - this module is not exported publicly

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L615)

Since v4.0.0