Package: `effect`<br />
Module: `TxSubscriptionRef`<br />

## TxSubscriptionRef.isTxSubscriptionRef

Checks if the given value is a TxSubscriptionRef.

**Example**

```ts
import { TxSubscriptionRef } from "effect"

declare const someValue: unknown

if (TxSubscriptionRef.isTxSubscriptionRef(someValue)) {
  console.log("This is a TxSubscriptionRef")
}
```

**Signature**

```ts
declare const isTxSubscriptionRef: (u: unknown) => u is TxSubscriptionRef<unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxSubscriptionRef.ts#L413)

Since v4.0.0