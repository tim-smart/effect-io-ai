Package: `effect`<br />
Module: `Redacted`<br />

## Redacted.wipeUnsafe

Erases the underlying value of a `Redacted` instance, rendering it unusable.
This function is intended to ensure that sensitive data does not remain in
memory longer than necessary.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Redacted.ts#L204)

Since v3.3.0