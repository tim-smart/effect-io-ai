Package: `effect`<br />
Module: `Cause`<br />

## Cause.hasDies

Returns `true` if the cause contains at least one `Die` reason.

**Example** (checking for defects)

```ts
import { Cause } from "effect"

console.log(Cause.hasDies(Cause.die("defect"))) // true
console.log(Cause.hasDies(Cause.fail("error"))) // false
```

**See**

- `hasFails` — check for typed errors
- `hasInterrupts` — check for interruptions

**Signature**

```ts
declare const hasDies: <E>(self: Cause<E>) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L842)

Since v2.0.0