Package: `effect`<br />
Module: `Exit`<br />

## Exit.getCause

Returns the Cause of a failed Exit as an Option.

- Use when you want to optionally inspect the failure cause
- Returns `Option.some(cause)` for a Failure, `Option.none()` for a Success

**Example** (Getting the failure cause)

```ts
import { Exit } from "effect"

console.log(Exit.getCause(Exit.fail("err"))) // { _tag: "Some", value: ... }
console.log(Exit.getCause(Exit.succeed(42))) // { _tag: "None" }
```

**See**

- `getSuccess` to extract the success value
- `filterCause` for filter-pipeline usage

**Signature**

```ts
declare const getCause: <A, E>(self: Exit<A, E>) => Option<Cause.Cause<E>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Exit.ts#L911)

Since v4.0.0