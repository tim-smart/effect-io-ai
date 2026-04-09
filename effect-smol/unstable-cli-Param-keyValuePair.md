Package: `effect`<br />
Module: `Param`<br />

## Param.keyValuePair

Creates a param that parses key=value pairs.
Useful for options that accept configuration values.

Note: Requires at least one key=value pair. The parsed pairs are merged
into a single record object.

**Example**

```ts
import * as Param from "effect/unstable/cli/Param"

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L800)

Since v4.0.0