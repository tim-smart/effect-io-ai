Package: `effect`<br />
Module: `Redactable`<br />

## Redactable.redact

Applies redaction to a value if it implements the Redactable interface.

This function checks if the value is redactable and applies the redaction
transformation if a current fiber context is available. Otherwise, it returns
the value unchanged.

**Example**

```ts
import { Redactable } from "effect"

class CreditCard {
  constructor(private number: string) {}

  [Redactable.symbolRedactable]() {
    return {
      number: this.number.slice(0, 4) + "****"
    }
  }
}

const card = new CreditCard("1234567890123456")
console.log(Redactable.redact(card)) // { number: "1234****" }

// Non-redactable values are returned unchanged
console.log(Redactable.redact("normal string")) // "normal string"
console.log(Redactable.redact({ id: 123 })) // { id: 123 }
```

**Signature**

```ts
declare const redact: (u: unknown) => unknown
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Redactable.ts#L112)

Since v4.0.0