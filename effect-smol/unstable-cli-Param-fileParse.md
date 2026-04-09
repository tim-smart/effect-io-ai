Package: `effect`<br />
Module: `Param`<br />

## Param.fileParse

Creates a param that reads and parses the content of the specified file.

The parser that is utilized will depend on the specified `format`, or the
extension of the file passed on the command-line if no `format` is specified.

**Example**

```ts
import * as Param from "effect/unstable/cli/Param"

// @internal - this module is not exported publicly

// Will use the extension of the file passed on the command line to determine
// the parser to use
const config = Param.fileParse(Param.flagKind, "config")

// Will use the JSON parser
const jsonConfig = Param.fileParse(Param.flagKind, "json-config", {
  format: "json"
})
```

**Signature**

```ts
declare const fileParse: <Kind extends ParamKind>(kind: Kind, name: string, options?: Primitive.FileParseOptions | undefined) => Param<Kind, unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L724)

Since v4.0.0