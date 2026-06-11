Package: `effect`<br />
Module: `Effect`<br />

## Effect.sync

Creates an `Effect` that represents a synchronous side-effectful computation.

**When to use**

Use when you need to wrap a synchronous side-effectful operation that is not
expected to throw.

**Details**

The provided function is evaluated lazily when the effect runs.

**Gotchas**

The function must not throw. If it throws, the thrown value is treated as a
defect, not as a typed failure. Use `try` when throwing is expected.

**Example** (Capturing synchronous logging in an Effect)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L1136)

Since v2.0.0