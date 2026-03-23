Package: `effect`<br />
Module: `Cause`<br />

## Cause.hasFails

Returns `true` if the cause contains at least one `Fail` reason.

**Example** (checking for typed errors)

```ts
import { Cause } from "effect"

console.log(Cause.hasFails(Cause.fail("error"))) // true
console.log(Cause.hasFails(Cause.die("defect"))) // false
```

**See**

- `hasDies` — check for defects
- `hasInterrupts` — check for interruptions

**Signature**

```ts
declare const hasFails: <E>(self: Cause<E>) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L744)

Since v2.0.0