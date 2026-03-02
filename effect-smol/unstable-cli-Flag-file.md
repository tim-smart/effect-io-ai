Package: `effect`<br />
Module: `Flag`<br />

## Flag.file

Creates a file path flag that accepts file paths with optional existence validation.

**Example**

```ts
import { Flag } from "effect/unstable/cli"

// Basic file flag
const inputFlag = Flag.file("input")
// Usage: --input ./data.json

// File that must exist
const configFlag = Flag.file("config", { mustExist: true })
// Usage: --config ./config.yaml (file must exist)
```

**Signature**

```ts
declare const file: (name: string, options?: { readonly mustExist?: boolean | undefined; }) => Flag<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Flag.ts#L201)

Since v4.0.0