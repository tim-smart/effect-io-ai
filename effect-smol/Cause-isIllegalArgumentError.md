Package: `effect`<br />
Module: `Cause`<br />

## Cause.isIllegalArgumentError

Tests if an arbitrary value is an `IllegalArgumentError`.

**Example** (runtime type check)

```ts
import { Cause } from "effect"

console.log(Cause.isIllegalArgumentError(new Cause.IllegalArgumentError())) // true
console.log(Cause.isIllegalArgumentError("nope")) // false
```

**Signature**

```ts
declare const isIllegalArgumentError: (u: unknown) => u is IllegalArgumentError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L1362)

Since v4.0.0