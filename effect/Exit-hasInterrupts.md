Package: `effect`<br />
Module: `Exit`<br />

## Exit.hasInterrupts

Checks whether a failed Exit contains interruptions (Interrupt reasons).

**When to use**

Use to check whether an `Exit` contains fiber interruption.

**Details**

Returns `false` for successful exits. Only checks for `Interrupt` reasons in
the Cause. A Cause with only `Fail` or `Die` reasons returns `false`.

**Example** (Checking for interruptions)

```ts
import { Exit } from "effect"

console.log(Exit.hasInterrupts(Exit.interrupt(1))) // true
console.log(Exit.hasInterrupts(Exit.fail("err")))  // false
console.log(Exit.hasInterrupts(Exit.succeed(42)))   // false
```

**See**

- `hasFails` to check for typed errors
- `hasDies` to check for defects

**Signature**

```ts
declare const hasInterrupts: <A, E>(self: Exit<A, E>) => self is Failure<A, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Exit.ts#L521)

Since v4.0.0