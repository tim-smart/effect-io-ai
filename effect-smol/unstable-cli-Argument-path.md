Package: `effect`<br />
Module: `Argument`<br />

## Argument.path

Creates a positional path argument.

**Example**

```ts
import { Argument } from "effect/unstable/cli"

const configPath = Argument.path("config")
```

**Signature**

```ts
declare const path: (name: string, options?: { pathType?: "file" | "directory" | "either"; mustExist?: boolean; }) => Argument<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Argument.ts#L162)

Since v4.0.0