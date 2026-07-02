Package: `effect`<br />
Module: `Cause`<br />

## Cause.isExceededCapacityError

Checks whether an arbitrary value is an `ExceededCapacityError`.

**Example** (Checking the runtime type)

```ts
import { Cause } from "effect"

console.log(Cause.isExceededCapacityError(new Cause.ExceededCapacityError())) // true
console.log(Cause.isExceededCapacityError("nope")) // false
```

**Signature**

```ts
declare const isExceededCapacityError: (u: unknown) => u is ExceededCapacityError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L1558)

Since v4.0.0