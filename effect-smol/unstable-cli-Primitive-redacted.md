Package: `effect`<br />
Module: `Primitive`<br />

## Primitive.redacted

Creates a primitive that wraps string input in a redacted type for secure handling.

**Example**

```ts
import { Effect, Redacted } from "effect"
import { Primitive } from "effect/unstable/cli"

const parseRedacted = Effect.gen(function*() {
  const result = yield* Primitive.redacted.parse("secret-password")
  console.log(Redacted.value(result)) // "secret-password"
  console.log(String(result)) // "<redacted>"
})
```

**Signature**

```ts
declare const redacted: Primitive<Redacted.Redacted<string>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Primitive.ts#L413)

Since v4.0.0