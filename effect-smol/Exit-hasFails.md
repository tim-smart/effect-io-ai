Package: `effect`<br />
Module: `Exit`<br />

## Exit.hasFails

Tests whether a failed Exit contains typed errors (Fail reasons).

- Use to distinguish typed failures from defects or interruptions
- Returns `false` for successful exits

Only checks for `Fail` reasons in the Cause. A Cause with only `Die` or
`Interrupt` reasons returns `false`.

**Example** (Checking for typed errors)

```ts
import { Exit } from "effect"

console.log(Exit.hasFails(Exit.fail("err")))           // true
console.log(Exit.hasFails(Exit.die(new Error("bug")))) // false
console.log(Exit.hasFails(Exit.succeed(42)))            // false
```

**See**

- `hasDies` to check for defects
- `hasInterrupts` to check for interruptions

**Signature**

```ts
declare const hasFails: <A, E>(self: Exit<A, E>) => self is Failure<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Exit.ts#L445)

Since v4.0.0