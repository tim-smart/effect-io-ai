## unsafeWipe

Erases the underlying value of a `Redacted` instance, rendering it unusable.
This function is intended to ensure that sensitive data does not remain in
memory longer than necessary.

**Example**

```ts
import * as assert from "node:assert"
import { Redacted } from "effect"

const API_KEY = Redacted.make("1234567890")

assert.equal(Redacted.value(API_KEY), "1234567890")

Redacted.unsafeWipe(API_KEY)

assert.throws(() => Redacted.value(API_KEY), new Error("Unable to get redacted value"))
```

**Signature**

```ts
declare const unsafeWipe: <A>(self: Redacted<A>) => boolean
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Redacted.ts#L118)

Since v3.3.0