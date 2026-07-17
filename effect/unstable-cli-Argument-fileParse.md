Package: `effect`<br />
Module: `Argument`<br />

## Argument.fileParse

Creates a positional argument that reads a file and parses its content.

**Details**

The parser is chosen from the explicit `format` option or, when omitted, the
file extension. The parsed value is `unknown`; use `fileSchema` when the
parsed content should also be decoded with a Schema.

**Example** (Parsing file content)

```ts
import { Argument } from "effect/unstable/cli"

const config = Argument.fileParse("config", { format: "json" })
```

**Signature**

```ts
declare const fileParse: (name: string, options?: Primitive.FileParseOptions | undefined) => Argument<unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Argument.ts#L238)

Since v4.0.0