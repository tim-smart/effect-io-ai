Package: `effect`<br />
Module: `Flag`<br />

## Flag.fileParse

Creates a flag that reads and parses the content of the specified file.

The parser that is utilized will depend on the specified `format`, or the
extension of the file passed on the command-line if no `format` is specified.

**Example**

```ts
import { Flag } from "effect/unstable/cli"

// Will use the extension of the file passed on the command line to determine
// the parser to use
const config = Flag.fileParse("config")

// Will use the JSON parser
const jsonConfig = Flag.fileParse("json-config", { format: "json" })
```

**Signature**

```ts
declare const fileParse: (name: string, options?: Primitive.FileParseOptions | undefined) => Flag<unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Flag.ts#L290)

Since v4.0.0