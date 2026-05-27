Package: `effect`<br />
Module: `Redacted`<br />

## Redacted.wipeUnsafe

Deletes the stored value for a `Redacted` wrapper, making future
`Redacted.value` calls on that wrapper fail.

**When to use**

Use when a `Redacted` wrapper should no longer be able to reveal its stored
value.

**Gotchas**

This unsafe operation does not zero memory and does not affect other
references to the original value. It only removes the value from the
internal redacted registry.

**Example** (Wiping a redacted value)

```ts
import { Redacted } from "effect"
import * as assert from "node:assert"

const API_KEY = Redacted.make("1234567890")

assert.equal(Redacted.value(API_KEY), "1234567890")

Redacted.wipeUnsafe(API_KEY)

assert.throws(
  () => Redacted.value(API_KEY),
  new Error("Unable to get redacted value")
)
```

**Signature**

```ts
declare const wipeUnsafe: <T>(self: Redacted<T>) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Redacted.ts#L315)

Since v4.0.0