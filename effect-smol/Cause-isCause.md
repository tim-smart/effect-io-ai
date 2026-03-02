Package: `effect`<br />
Module: `Cause`<br />

## Cause.isCause

Tests if an arbitrary value is a `Cause`.

**Example** (runtime type check)

```ts
import { Cause } from "effect"

console.log(Cause.isCause(Cause.fail("error"))) // true
console.log(Cause.isCause("not a cause")) // false
```

**Signature**

```ts
declare const isCause: (self: unknown) => self is Cause<unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L159)

Since v2.0.0