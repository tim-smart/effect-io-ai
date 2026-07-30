Package: `effect`<br />
Module: `Redacted`<br />

## Redacted.value

Retrieves the original value from a `Redacted` instance. Use this function
with caution, as it exposes the sensitive data.

**Example**

```ts
import * as assert from "node:assert"
import { Redacted } from "effect"

const API_KEY = Redacted.make("1234567890")

assert.equal(Redacted.value(API_KEY), "1234567890")
```

**Signature**

```ts
declare const value: <A>(self: Redacted<A>) => A
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Redacted.ts#L94)

Since v3.3.0