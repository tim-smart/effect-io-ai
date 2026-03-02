Package: `effect`<br />
Module: `Flag`<br />

## Flag.keyValuePair

Creates a flag that parses key=value pairs.
Useful for options that accept configuration values.

Note: Requires at least one key=value pair. Multiple pairs are merged
into a single record.

**Example**

```ts
import { Flag } from "effect/unstable/cli"

const env = Flag.keyValuePair("env")
// --env FOO=bar --env BAZ=qux will parse to { FOO: "bar", BAZ: "qux" }
```

**Signature**

```ts
declare const keyValuePair: (name: string) => Flag<Record<string, string>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Flag.ts#L339)

Since v4.0.0