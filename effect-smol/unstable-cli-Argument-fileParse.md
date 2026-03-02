Package: `effect`<br />
Module: `Argument`<br />

## Argument.fileParse

Creates a positional argument that reads and validates file content using a schema.

**Example**

```ts
import { Argument } from "effect/unstable/cli"

const config = Argument.fileParse("config", { format: "json" })
```

**Signature**

```ts
declare const fileParse: (name: string, options?: Primitive.FileParseOptions | undefined) => Argument<unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Argument.ts#L211)

Since v4.0.0