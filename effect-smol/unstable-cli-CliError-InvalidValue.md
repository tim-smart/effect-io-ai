Package: `effect`<br />
Module: `CliError`<br />

## CliError.InvalidValue

Error thrown when an option or argument value is invalid.

**Example**

```ts
import { Effect } from "effect"
import { CliError } from "effect/unstable/cli"

const invalidValueError = new CliError.InvalidValue({
  option: "port",
  value: "abc123",
  expected: "integer between 1 and 65535",
  kind: "flag"
})

console.log(invalidValueError.message)
// "Invalid value for flag --port: "abc123". Expected: integer between 1 and 65535"

// For positional arguments
const invalidArgError = new CliError.InvalidValue({
  option: "count",
  value: "abc",
  expected: "integer",
  kind: "argument"
})

console.log(invalidArgError.message)
// "Invalid value for argument <count>: "abc". Expected: integer"
```

**Signature**

```ts
declare class InvalidValue
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/CliError.ts#L307)

Since v4.0.0