Package: `effect`<br />
Module: `Primitive`<br />

## Primitive.redacted

Creates a primitive that wraps string input in `Redacted`.

**Details**

The wrapped value is hidden when formatted or inspected, while the original
string remains available through the `Redacted` API when explicitly needed.

**Example** (Parsing redacted values)

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Primitive.ts#L432)

Since v4.0.0