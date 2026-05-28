Package: `effect`<br />
Module: `TxSubscriptionRef`<br />

## TxSubscriptionRef.isTxSubscriptionRef

Checks whether the given value is a TxSubscriptionRef.

**When to use**

Use to narrow an unknown value before treating it as a `TxSubscriptionRef`.

**Example** (Checking transactional subscription references)

```ts
import { TxSubscriptionRef } from "effect"

declare const someValue: unknown

if (TxSubscriptionRef.isTxSubscriptionRef(someValue)) {
  console.log("This is a TxSubscriptionRef")
}
```

**See**

- `make` for creating a `TxSubscriptionRef`

**Signature**

```ts
declare const isTxSubscriptionRef: (u: unknown) => u is TxSubscriptionRef<unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxSubscriptionRef.ts#L540)

Since v4.0.0