Package: `effect`<br />
Module: `Redactable`<br />

## Redactable.symbolRedactable

Symbol used to identify objects that implement the `Redactable`
protocol.

**When to use**

Use as the property key when implementing the `Redactable` protocol.

**Details**

Add a method under this key to make an object redactable. The method receives
the current `Context` and must return the replacement value. The symbol is
registered globally via `Symbol.for("~effect/Redactable")`, so it is
identical across multiple copies of the library at runtime.

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

**See**

- `Redactable` for the interface this symbol belongs to
- `isRedactable` to check whether a value has this symbol

**Signature**

```ts
declare const symbolRedactable: unique symbol
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Redactable.ts#L107)

Since v3.10.0