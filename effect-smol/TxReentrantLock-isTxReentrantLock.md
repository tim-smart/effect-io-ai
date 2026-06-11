Package: `effect`<br />
Module: `TxReentrantLock`<br />

## TxReentrantLock.isTxReentrantLock

Checks whether the given value is a TxReentrantLock.

**Example** (Checking for TxReentrantLock values)

```ts
import { TxReentrantLock } from "effect"

declare const someValue: unknown

if (TxReentrantLock.isTxReentrantLock(someValue)) {
  console.log("This is a TxReentrantLock")
}
```

**Signature**

```ts
declare const isTxReentrantLock: (u: unknown) => u is TxReentrantLock
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxReentrantLock.ts#L655)

Since v4.0.0