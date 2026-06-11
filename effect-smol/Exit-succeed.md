Package: `effect`<br />
Module: `Exit`<br />

## Exit.succeed

Creates a successful Exit containing the given value.

**When to use**

Use when you need an Exit that contains a known success value.

**Details**

Returns a `Success<A>` with the provided value. Does not perform any
computation.

**Example** (Creating a successful Exit)

```ts
import { Exit } from "effect"

const exit = Exit.succeed(42)
console.log(Exit.isSuccess(exit)) // true
```

**See**

- `fail` to create a failed Exit
- `void` for a pre-allocated success with no value

**Signature**

```ts
declare const succeed: <A>(a: A) => Exit<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Exit.ts#L219)

Since v2.0.0