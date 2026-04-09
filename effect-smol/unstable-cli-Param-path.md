Package: `effect`<br />
Module: `Param`<br />

## Param.path

Creates a path parameter that accepts file or directory paths.

**Example**

```ts
import * as Param from "effect/unstable/cli/Param"

// @internal - this module is not exported publicly

// Basic path parameter
const outputPath = Param.path(Param.flagKind, "output")

// Path that must exist
const inputPath = Param.path(Param.flagKind, "input", { mustExist: true })

// File-only path
const configFile = Param.path(Param.flagKind, "config", {
  pathType: "file",
  mustExist: true,
  typeName: "config-file"
})
```

**Signature**

```ts
declare const path: <Kind extends ParamKind>(kind: Kind, name: string, options?: { readonly pathType?: Primitive.PathType | undefined; readonly mustExist?: boolean | undefined; readonly typeName?: string | undefined; }) => Param<Kind, string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L549)

Since v4.0.0