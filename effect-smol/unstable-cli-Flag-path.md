Package: `effect`<br />
Module: `Flag`<br />

## Flag.path

Creates a path flag that accepts file system path input with validation options.

**Example**

```ts
import { Flag } from "effect/unstable/cli"

// Basic path flag
const pathFlag = Flag.path("config-path")

// File-only path that must exist
const fileFlag = Flag.path("input-file", {
  pathType: "file",
  mustExist: true
})

// Directory path with custom type name
const dirFlag = Flag.path("output-dir", {
  pathType: "directory",
  typeName: "OUTPUT_DIRECTORY"
})
```

**Signature**

```ts
declare const path: (name: string, options?: { readonly pathType?: "file" | "directory" | "either" | undefined; readonly mustExist?: boolean | undefined; readonly typeName?: string | undefined; }) => Flag<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Flag.ts#L175)

Since v4.0.0