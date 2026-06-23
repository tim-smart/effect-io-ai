Package: `effect`<br />
Module: `Flag`<br />

## Flag.choiceWithValue

Constructs option parameters that represent a choice between several inputs.
Each tuple maps a string flag value to an associated typed value.

**Example** (Creating flag choices with values)

```ts
import { Flag } from "effect/unstable/cli"

// simple enum like choice mapping directly to string union
const color = Flag.choice("color", ["red", "green", "blue"])

// choice with custom value mapping
const logLevel = Flag.choiceWithValue("log-level", [
  ["debug", "Debug" as const],
  ["info", "Info" as const],
  ["error", "Error" as const]
])
```

**Signature**

```ts
declare const choiceWithValue: <const Choice extends ReadonlyArray<readonly [string, any]>>(name: string, choices: Choice) => Flag<Choice[number][1]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Flag.ts#L149)

Since v4.0.0