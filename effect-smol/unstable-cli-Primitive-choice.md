Package: `effect`<br />
Module: `Primitive`<br />

## Primitive.choice

Creates a primitive that accepts only specific choice values mapped to custom types.

**Example**

```ts
import { Effect } from "effect"
import { Primitive } from "effect/unstable/cli"

type LogLevel = "debug" | "info" | "warn" | "error"

const logLevelPrimitive = Primitive.choice<LogLevel>([
  ["debug", "debug"],
  ["info", "info"],
  ["warn", "warn"],
  ["error", "error"]
])

const parseLogLevel = Effect.gen(function*() {
  const result1 = yield* logLevelPrimitive.parse("info")
  console.log(result1) // "info"

  const result2 = yield* logLevelPrimitive.parse("debug")
  console.log(result2) // "debug"
})
```

**Signature**

```ts
declare const choice: <A>(choices: ReadonlyArray<readonly [string, A]>) => Primitive<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Primitive.ts#L287)

Since v4.0.0