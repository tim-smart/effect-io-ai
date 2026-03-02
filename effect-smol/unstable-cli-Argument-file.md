Package: `effect`<br />
Module: `Argument`<br />

## Argument.file

Creates a positional file path argument.

**Example**

```ts
import { Argument } from "effect/unstable/cli"

const inputFile = Argument.file("input", { mustExist: true }) // Must exist
const outputFile = Argument.file("output", { mustExist: false }) // Must not exist
```

**Signature**

```ts
declare const file: (name: string, options?: { readonly mustExist?: boolean | undefined; }) => Argument<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Argument.ts#L81)

Since v4.0.0