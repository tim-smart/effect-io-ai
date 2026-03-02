Package: `effect`<br />
Module: `Redactable`<br />

## Redactable.Redactable

Interface for objects that can provide redacted representations.

Redactable objects can provide different representations of themselves based on
the current execution context. This is useful for sensitive data that should
be hidden or modified in certain environments (like production logs).

**Example**

```ts
import type { ServiceMap } from "effect"
import { Redactable } from "effect"

class SensitiveData implements Redactable.Redactable {
  constructor(private secret: string) {}

  [Redactable.symbolRedactable](context: ServiceMap.ServiceMap<never>) {
    // In production, hide the actual secret
    return { secret: "[REDACTED]" }
  }
}

const data = new SensitiveData("my-secret-key")
// The redacted version will be used when converting to JSON in certain contexts
```

**Signature**

```ts
export interface Redactable {
  readonly [symbolRedactable]: (context: ServiceMap.ServiceMap<never>) => unknown
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Redactable.ts#L44)

Since v4.0.0