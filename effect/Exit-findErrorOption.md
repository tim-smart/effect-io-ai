Package: `effect`<br />
Module: `Exit`<br />

## Exit.findErrorOption

Returns the first typed error from a failed Exit as an Option.

**When to use**

Use when you need the first typed error from an `Exit` as an `Option`,
ignoring successes and non-typed failures.

**Details**

Returns `Option.some(error)` if the Cause contains a Fail reason. Successes,
defect-only failures, and interrupt-only failures return `Option.none()`.

**Gotchas**

Only finds the first Fail reason. If the Cause has multiple typed errors,
the rest are ignored.

**Example** (Getting the first error)

```ts
import { Exit } from "effect"

console.log(Exit.findErrorOption(Exit.fail("err")))           // { _tag: "Some", value: "err" }
console.log(Exit.findErrorOption(Exit.die(new Error("bug")))) // { _tag: "None" }
console.log(Exit.findErrorOption(Exit.succeed(42)))            // { _tag: "None" }
```

**See**

- `findError` for filter-pipeline usage
- `getCause` to get the full Cause as an Option

**Signature**

```ts
declare const findErrorOption: <A, E>(self: Exit<A, E>) => Option<E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Exit.ts#L1085)

Since v4.0.0