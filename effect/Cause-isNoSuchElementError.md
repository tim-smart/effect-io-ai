Package: `effect`<br />
Module: `Cause`<br />

## Cause.isNoSuchElementError

Checks whether an arbitrary value is a `NoSuchElementError`.

**Example** (Checking the runtime type)

```ts
import { Cause } from "effect"

console.log(Cause.isNoSuchElementError(new Cause.NoSuchElementError())) // true
console.log(Cause.isNoSuchElementError("nope")) // false
```

**Signature**

```ts
declare const isNoSuchElementError: (u: unknown) => u is NoSuchElementError
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L1207)

Since v4.0.0