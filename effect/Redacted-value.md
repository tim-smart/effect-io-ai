# value

Retrieves the original value from a `Redacted` instance. Use this function
with caution, as it exposes the sensitive data.

To import and use `value` from the "Redacted" module:

ts
import \* as Redacted from "effect/Redacted"
// Can be accessed like this
Redacted.value
undefined

**Example**

```ts
import { Redacted } from "effect"

const API_KEY = Redacted.make("1234567890")

assert.equal(Redacted.value(API_KEY), "1234567890")
```

**Signature**

```ts
export declare const value: <A>(self: Redacted<A>) => A
```
