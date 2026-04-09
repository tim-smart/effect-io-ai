Package: `effect`<br />
Module: `Redactable`<br />

## Redactable.Redactable

Interface for objects that provide context-aware redacted representations.

- Implement this interface on any class or object that holds sensitive data
  and should present a sanitized form when inspected or logged.
- The `[symbolRedactable]` method receives the current fiber's `Context`.
- If no fiber is active, an empty `Context` is provided.

**Example** (Masking an API key)

```ts
import { Context, Redactable } from "effect"

class ApiKey {
  constructor(readonly raw: string) {}

  [Redactable.symbolRedactable](_ctx: Context.Context<never>) {
    return this.raw.slice(0, 4) + "..."
  }
}
```

See also:
- `symbolRedactable` - the symbol key to implement
- `redact` - apply redaction to any value
- `isRedactable` - type guard for this interface

**Signature**

```ts
export interface Redactable {
  readonly [symbolRedactable]: (context: Context.Context<never>) => unknown
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Redactable.ts#L137)

Since v4.0.0