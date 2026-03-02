Package: `effect`<br />
Module: `Param`<br />

## Param.redacted

Creates a redacted parameter for sensitive data like passwords.
The value is masked in help output and logging.

**Example**

```ts
import * as Param from "effect/unstable/cli/Param"

// @internal - this module is not exported publicly

// Create a password parameter
const password = Param.redacted(Param.flagKind, "password")

// Create an API key argument
const apiKey = Param.redacted(Param.argumentKind, "api-key")

// Usage: --password (value will be hidden in help/logs)
```

**Signature**

```ts
declare const redacted: <Kind extends ParamKind>(kind: Kind, name: string) => Param<Kind, Redacted.Redacted<string>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L650)

Since v4.0.0