Package: `effect`<br />
Module: `Flag`<br />

## Flag.redacted

Creates a redacted flag that securely handles sensitive string input.

**Example**

```ts
import { Effect, Redacted } from "effect"
import { Flag } from "effect/unstable/cli"

const passwordFlag = Flag.redacted("password")

const program = Effect.gen(function*() {
  const [leftover, password] = yield* passwordFlag.parse({
    arguments: [],
    flags: { "password": ["abc123"] }
  })
  const value = Redacted.value(password) // Access the underlying value
  console.log("Password length:", value.length)
})
```

**Signature**

```ts
declare const redacted: (name: string) => Flag<Redacted.Redacted<string>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Flag.ts#L250)

Since v4.0.0