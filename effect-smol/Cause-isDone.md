Package: `effect`<br />
Module: `Cause`<br />

## Cause.isDone

Tests if an arbitrary value is a `Done` signal.

**Example** (runtime type check)

```ts
import { Cause } from "effect"

console.log(Cause.isDone(Cause.Done())) // true
console.log(Cause.isDone("not done"))   // false
```

**Signature**

```ts
declare const isDone: (u: unknown) => u is Done<any>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L1182)

Since v4.0.0