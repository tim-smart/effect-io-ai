Package: `effect`<br />
Module: `IdGenerator`<br />

## IdGenerator.MakeOptions

Configuration options for creating custom ID generators.

**Example**

```ts
import type { IdGenerator } from "effect/unstable/ai"

// Configuration for tool call IDs
const toolCallOptions: IdGenerator.MakeOptions = {
  alphabet: "0123456789ABCDEF",
  prefix: "tool",
  separator: "_",
  size: 8
}

// This will generate IDs like: "tool_A1B2C3D4"
```

**Signature**

```ts
export interface MakeOptions {
  /**
   * The character set to use for generating the random portion of IDs.
   */
  readonly alphabet: string
  /**
   * Optional prefix to prepend to generated IDs.
   */
  readonly prefix?: string | undefined
  /**
   * Character used to separate the prefix from the random portion.
   */
  readonly separator: string
  /**
   * Length of the random portion of the generated ID.
   */
  readonly size: number
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/IdGenerator.ts#L133)

Since v4.0.0