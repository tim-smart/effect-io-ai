# unsafeWipe

Erases the underlying value of a `Redacted` instance, rendering it unusable.
This function is intended to ensure that sensitive data does not remain in
memory longer than necessary.

To import and use `unsafeWipe` from the "Redacted" module:

ts
import \* as Redacted from "effect/Redacted"
// Can be accessed like this
Redacted.unsafeWipe
undefined

**Example**

```ts
import { Redacted } from "effect"

const API_KEY = Redacted.make("1234567890")

assert.equal(Redacted.value(API_KEY), "1234567890")

Redacted.unsafeWipe(API_KEY)

assert.throws(() => Redacted.value(API_KEY), new Error("Unable to get redacted value"))
```

**Signature**

```ts
export declare const unsafeWipe: <A>(self: Redacted<A>) => boolean
```
