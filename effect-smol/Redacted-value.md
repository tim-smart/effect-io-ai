Package: `effect`<br />
Module: `Redacted`<br />

## Redacted.value

Retrieves the original value from a `Redacted` instance. Use this function
with caution, as it exposes the sensitive data.

**Example**

```ts
import { Redacted } from "effect"
import * as assert from "node:assert"

const API_KEY = Redacted.make("1234567890")

assert.equal(Redacted.value(API_KEY), "1234567890")
```

**Signature**

```ts
declare const value: <T>(self: Redacted<T>) => T
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Redacted.ts#L177)

Since v3.3.0