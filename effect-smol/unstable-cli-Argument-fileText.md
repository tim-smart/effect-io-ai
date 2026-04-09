Package: `effect`<br />
Module: `Argument`<br />

## Argument.fileText

Creates a positional argument that reads file content as a string.

**Example**

```ts
import { Argument } from "effect/unstable/cli"

const config = Argument.fileText("config-file")
```

**Signature**

```ts
declare const fileText: (name: string) => Argument<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Argument.ts#L195)

Since v4.0.0