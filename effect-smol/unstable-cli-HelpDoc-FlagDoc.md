Package: `effect`<br />
Module: `HelpDoc`<br />

## HelpDoc.FlagDoc

Documentation for a single command-line flag/option

**Example**

```ts
import { Option as O } from "effect"
import type { HelpDoc } from "effect/unstable/cli"

const verboseFlag: HelpDoc.FlagDoc = {
  name: "verbose",
  aliases: ["-v", "--verbose"],
  type: "boolean",
  description: O.some("Enable verbose output"),
  required: false
}

const portFlag: HelpDoc.FlagDoc = {
  name: "port",
  aliases: ["-p"],
  type: "integer",
  description: O.some("Port number to use"),
  required: true
}
```

**Signature**

```ts
export interface FlagDoc {
  /**
   * Primary name of the flag (e.g., "verbose")
   */
  readonly name: string

  /**
   * Alternative names/aliases for the flag (e.g., ["-v"])
   */
  readonly aliases: ReadonlyArray<string>

  /**
   * Type of the flag value (e.g., "string", "boolean", "integer")
   */
  readonly type: string

  /**
   * Description of what the flag does
   */
  readonly description: Option.Option<string>

  /**
   * Whether this flag is required
   */
  readonly required: boolean
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HelpDoc.ts#L143)

Since v4.0.0