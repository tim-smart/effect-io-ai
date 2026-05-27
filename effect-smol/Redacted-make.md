Package: `effect`<br />
Module: `Redacted`<br />

## Redacted.make

Creates a `Redacted` wrapper for a sensitive value.

**When to use**

Use to wrap a sensitive value so normal string, JSON, and inspection output
is redacted.

**Details**

The wrapper redacts string, JSON, and inspection output to reduce accidental
disclosure. The original value remains retrievable with `Redacted.value`
until the wrapper is wiped or becomes unreachable.

**Example** (Creating a redacted value)

```ts
import { Redacted } from "effect"

const API_KEY = Redacted.make("1234567890")
```

**Signature**

```ts
declare const make: <T>(value: T, options?: { readonly label?: string | undefined; }) => Redacted<T>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Redacted.ts#L218)

Since v3.3.0