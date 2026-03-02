Package: `effect`<br />
Module: `Cause`<br />

## Cause.isUnknownError

Tests if an arbitrary value is an `UnknownError`.

**Example** (runtime type check)

```ts
import { Cause } from "effect"

console.log(Cause.isUnknownError(new Cause.UnknownError("x"))) // true
console.log(Cause.isUnknownError("nope")) // false
```

**Signature**

```ts
declare const isUnknownError: (u: unknown) => u is UnknownError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L1497)

Since v4.0.0