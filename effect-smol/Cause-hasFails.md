Package: `effect`<br />
Module: `Cause`<br />

## Cause.hasFails

Returns `true` if the cause contains at least one `Fail` reason.

**When to use**

Use to check whether a cause includes typed failures before extracting,
mapping, or rendering them.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L848)

Since v4.0.0