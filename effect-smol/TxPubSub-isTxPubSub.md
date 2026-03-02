Package: `effect`<br />
Module: `TxPubSub`<br />

## TxPubSub.isTxPubSub

Checks if the given value is a TxPubSub.

**Example**

```ts
import { TxPubSub } from "effect"

declare const someValue: unknown

if (TxPubSub.isTxPubSub(someValue)) {
  console.log("This is a TxPubSub")
}
```

**Signature**

```ts
declare const isTxPubSub: (u: unknown) => u is TxPubSub<unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPubSub.ts#L637)

Since v4.0.0