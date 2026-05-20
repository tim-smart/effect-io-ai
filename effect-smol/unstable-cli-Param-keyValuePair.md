Package: `effect`<br />
Module: `Param`<br />

## Param.keyValuePair

Creates a param that parses key=value pairs.

**When to use**

Use it for options that accept configuration values.

**Details**

Requires at least one key=value pair. The parsed pairs are merged into a
single record object.

**Example** (Parsing key-value pairs)

```ts
import { Param } from "effect/unstable/cli"

// @internal - this module is not exported publicly

const env = Param.keyValuePair(Param.flagKind, "env")
// --env FOO=bar --env BAZ=qux will parse to { FOO: "bar", BAZ: "qux" }

const props = Param.keyValuePair(Param.flagKind, "property")
// --property name=value --property debug=true
```

**Signature**

```ts
declare const keyValuePair: <Kind extends ParamKind>(kind: Kind, name: string) => Param<Kind, Record<string, string>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L902)

Since v4.0.0