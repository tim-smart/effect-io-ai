Package: `effect`<br />
Module: `Exit`<br />

## Exit.findErrorOption

Returns the first typed error from a failed Exit as an Option.

- Use when you want to optionally extract a typed error without dealing with the full Cause
- Returns `Option.some(error)` if the Cause contains a Fail reason, `Option.none()` otherwise
- Returns `Option.none()` for successes, defect-only failures, and interrupt-only failures

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Exit.ts#L940)

Since v4.0.0