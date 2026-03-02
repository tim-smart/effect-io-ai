Package: `effect`<br />
Module: `HelpDoc`<br />

## HelpDoc.ArgDoc

Documentation for a positional argument

**Example**

```ts
import { ServiceMap } from "effect"
import type { HelpDoc } from "effect/unstable/cli"

const sourceArg: HelpDoc.ArgDoc = {
  name: "source",
  type: "file",
  description: "Source file to process",
  required: true,
  variadic: false
}

const filesArg: HelpDoc.ArgDoc = {
  name: "files",
  type: "file",
  description: "Files to process (can specify multiple)",
  required: false,
  variadic: true
}

// Used in command help documentation
const copyCommandHelp: HelpDoc.HelpDoc = {
  description: "Copy files from source to destination",
  usage: "copy <source> [files...]",
  annotations: ServiceMap.empty(),
  flags: [],
  args: [sourceArg, filesArg]
}
```

**Signature**

```ts
export interface ArgDoc {
  /**
   * Name of the argument (e.g., "source", "destination")
   */
  readonly name: string

  /**
   * Type of the argument value (e.g., "string", "file", "directory")
   */
  readonly type: string

  /**
   * Description of what the argument is for
   */
  readonly description: string | undefined

  /**
   * Whether this argument is required or optional
   */
  readonly required: boolean

  /**
   * Whether this argument is variadic (accepts multiple values)
   */
  readonly variadic: boolean
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HelpDoc.ts#L284)

Since v4.0.0