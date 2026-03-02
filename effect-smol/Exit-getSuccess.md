Package: `effect`<br />
Module: `Exit`<br />

## Exit.getSuccess

Returns the success value of an Exit as an Option.

- Use when you want to optionally extract the value without pattern matching
- Returns `Option.some(value)` for a Success, `Option.none()` for a Failure

**Example** (Getting the success value)

```ts
import { Exit } from "effect"

console.log(Exit.getSuccess(Exit.succeed(42))) // { _tag: "Some", value: 42 }
console.log(Exit.getSuccess(Exit.fail("err"))) // { _tag: "None" }
```

**See**

- `getCause` to extract the Cause of a failure
- `filterValue` for filter-pipeline usage

**Signature**

```ts
declare const getSuccess: <A, E>(self: Exit<A, E>) => Option<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Exit.ts#L888)

Since v4.0.0