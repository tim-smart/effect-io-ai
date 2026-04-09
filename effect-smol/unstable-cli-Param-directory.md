Package: `effect`<br />
Module: `Param`<br />

## Param.directory

Creates a directory path parameter.

This is a convenience function that creates a path parameter with the
`pathType` set to `"directory"` and a default type name of `"directory"`.

**Example**

```ts
import * as Param from "effect/unstable/cli/Param"

// @internal - this module is not exported publicly

// Basic directory parameter
const outputDir = Param.directory(Param.flagKind, "output-dir")

// Directory that must exist
const sourceDir = Param.directory(Param.flagKind, "source", { mustExist: true })

// Usage: --output-dir /path/to/dir --source /existing/dir
```

**Signature**

```ts
declare const directory: <Kind extends ParamKind>(kind: Kind, name: string, options?: { readonly mustExist?: boolean | undefined; }) => Param<Kind, string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L589)

Since v4.0.0