Package: `effect`<br />
Module: `Exit`<br />

## Exit.hasDies

Tests whether a failed Exit contains defects (Die reasons).

- Use to check for unexpected errors
- Returns `false` for successful exits

Only checks for `Die` reasons in the Cause. A Cause with only `Fail` or
`Interrupt` reasons returns `false`.

**Example** (Checking for defects)

```ts
import { Exit } from "effect"

console.log(Exit.hasDies(Exit.die(new Error("bug")))) // true
console.log(Exit.hasDies(Exit.fail("err")))           // false
console.log(Exit.hasDies(Exit.succeed(42)))            // false
```

**See**

- `hasFails` to check for typed errors
- `hasInterrupts` to check for interruptions

**Signature**

```ts
declare const hasDies: <A, E>(self: Exit<A, E>) => self is Failure<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Exit.ts#L472)

Since v4.0.0