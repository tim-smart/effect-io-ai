Package: `effect`<br />
Module: `Exit`<br />

## Exit.isExit

Checks whether an unknown value is an Exit.

**When to use**

Use to validate unknown values at system boundaries and narrow them to
`Exit<unknown, unknown>`.

**Details**

Does not inspect the contents of the Exit. Returns `true` for both Success
and Failure exits.

**Example** (Checking if a value is an Exit)

```ts
import { Exit } from "effect"

console.log(Exit.isExit(Exit.succeed(42))) // true
console.log(Exit.isExit(Exit.fail("err"))) // true
console.log(Exit.isExit("not an exit"))    // false
```

**See**

- `isSuccess` to check for a successful Exit
- `isFailure` to check for a failed Exit

**Signature**

```ts
declare const isExit: (u: unknown) => u is Exit<unknown, unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Exit.ts#L237)

Since v2.0.0