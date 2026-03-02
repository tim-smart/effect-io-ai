Package: `effect`<br />
Module: `Flag`<br />

## Flag.boolean

Creates a boolean flag that can be enabled or disabled.

**Example**

```ts
import { Flag } from "effect/unstable/cli"

const verboseFlag = Flag.boolean("verbose")
// Usage: --verbose (true) or --no-verbose (false)
```

**Signature**

```ts
declare const boolean: (name: string) => Flag<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Flag.ts#L62)

Since v4.0.0