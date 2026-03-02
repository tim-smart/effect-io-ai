Package: `effect`<br />
Module: `Redactable`<br />

## Redactable.isRedactable

Checks if a value implements the `Redactable` interface.

This function determines whether a given value has redaction capabilities,
meaning it can provide alternative representations based on context.

**Example**

```ts
import { Redactable } from "effect"

class RedactableSecret {
  [Redactable.symbolRedactable]() {
    return "[REDACTED]"
  }
}

const secret = new RedactableSecret()
const normal = { value: 42 }

console.log(Redactable.isRedactable(secret)) // true
console.log(Redactable.isRedactable(normal)) // false
console.log(Redactable.isRedactable("string")) // false
```

**Signature**

```ts
declare const isRedactable: (u: unknown) => u is Redactable
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Redactable.ts#L77)

Since v4.0.0