Package: `effect`<br />
Module: `Cause`<br />

## Cause.isTimeoutError

Tests if an arbitrary value is a `TimeoutError`.

**Example** (runtime type check)

```ts
import { Cause } from "effect"

console.log(Cause.isTimeoutError(new Cause.TimeoutError())) // true
console.log(Cause.isTimeoutError("nope")) // false
```

**Signature**

```ts
declare const isTimeoutError: (u: unknown) => u is TimeoutError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L1293)

Since v4.0.0