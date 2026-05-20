Package: `effect`<br />
Module: `Flag`<br />

## Flag.keyValuePair

Creates a flag that parses key=value pairs.

**When to use**

Use this for options that accept configuration values.

**Details**

Requires at least one key=value pair. Multiple pairs are merged into a single
record.

**Example** (Parsing key-value pairs)

```ts
import { Flag } from "effect/unstable/cli"

const env = Flag.keyValuePair("env")
// --env FOO=bar --env BAZ=qux will parse to { FOO: "bar", BAZ: "qux" }
```

**Signature**

```ts
declare const keyValuePair: (name: string) => Flag<Record<string, string>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Flag.ts#L384)

Since v4.0.0