Package: `effect`<br />
Module: `Flag`<br />

## Flag.directory

Creates a directory path flag that accepts directory paths with optional existence validation.

**Example**

```ts
import { Flag } from "effect/unstable/cli"

// Basic directory flag
const outputFlag = Flag.directory("output")
// Usage: --output ./build

// Directory that must exist
const sourceFlag = Flag.directory("source", { mustExist: true })
// Usage: --source ./src (directory must exist)
```

**Signature**

```ts
declare const directory: (name: string, options?: { readonly mustExist?: boolean | undefined; }) => Flag<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Flag.ts#L223)

Since v4.0.0