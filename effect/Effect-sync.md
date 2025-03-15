Package: `effect`<br />
Module: `Effect`<br />

## Effect.sync

Creates an `Effect` that represents a synchronous side-effectful computation.

**Details**

The provided function (`thunk`) must not throw errors; if it does, the error
will be treated as a "defect".

This defect is not a standard error but indicates a flaw in the logic that
was expected to be error-free. You can think of it similar to an unexpected
crash in the program, which can be further managed or logged using tools like
`catchAllDefect`.

**When to Use**

Use this function when you are sure the operation will not fail.

**Example** (Logging a Message)

```ts
import { Effect } from "effect"

const log = (message: string) =>
  Effect.sync(() => {
    console.log(message) // side effect
  })

//      ┌─── Effect<void, never, never>
//      ▼
const program = log("Hello, World!")
```

**See**

- `| try` for a version that can handle failures.

**Signature**

```ts
declare const sync: <A>(thunk: LazyArg<A>) => Effect<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L3307)

Since v2.0.0