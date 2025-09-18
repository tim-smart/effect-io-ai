Package: `@effect/ai`<br />
Module: `IdGenerator`<br />

## IdGenerator.MakeOptions

Configuration options for creating custom ID generators.

**Example**

```ts
import { IdGenerator } from "@effect/ai"

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/IdGenerator.ts#L138)

Since v1.0.0