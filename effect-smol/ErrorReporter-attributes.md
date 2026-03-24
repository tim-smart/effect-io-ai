Package: `effect`<br />
Module: `ErrorReporter`<br />

## ErrorReporter.attributes

Symbol key used to attach extra key/value metadata to an error report.

Reporters receive these attributes alongside the error, making it easy to
include contextual information such as user IDs, request IDs, or any
domain-specific data useful for debugging.

**Example**

```ts
import { Data, ErrorReporter } from "effect"

class PaymentError extends Data.TaggedError("PaymentError")<{
  readonly orderId: string
}> {
  readonly [ErrorReporter.attributes] = {
    orderId: this.orderId
  }
}
```

**Signature**

```ts
type attributes = "~effect/ErrorReporter/attributes"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ErrorReporter.ts#L420)

Since v4.0.0