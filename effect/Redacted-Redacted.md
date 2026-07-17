Package: `effect`<br />
Module: `Redacted`<br />

## Redacted.Redacted

A wrapper for sensitive values whose string, JSON, and inspection output is
redacted.

**When to use**

Use to carry sensitive values while reducing accidental exposure in string,
JSON, and inspection output.

**Gotchas**

The underlying value is still stored in memory and can be recovered with
`Redacted.value` until the wrapper is wiped or becomes unreachable. Use
`Redacted` to reduce accidental disclosure in logs and diagnostics, not as a
cryptographic protection mechanism.

**Example** (Creating redacted values)

```ts
import { Redacted } from "effect"

// Create a redacted value to protect sensitive information
const apiKey = Redacted.make("secret-key")
const userPassword = Redacted.make("user-password")

// TypeScript will infer the types as Redacted<string>
```

**Signature**

```ts
export interface Redacted<out A = string> extends Redacted.Variance<A>, Equal.Equal, Pipeable {
  readonly label: string | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Redacted.ts#L55)

Since v3.3.0