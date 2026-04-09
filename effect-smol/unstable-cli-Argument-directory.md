Package: `effect`<br />
Module: `Argument`<br />

## Argument.directory

Creates a positional directory path argument.

**Example**

```ts
import { Argument } from "effect/unstable/cli"

const workspace = Argument.directory("workspace", { mustExist: true }) // Must exist
```

**Signature**

```ts
declare const directory: (name: string, options?: { readonly mustExist?: boolean | undefined; }) => Argument<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Argument.ts#L97)

Since v4.0.0