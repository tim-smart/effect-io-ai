Package: `effect`<br />
Module: `Effect`<br />

## Effect.succeed

Creates an `Effect` that always succeeds with a given value.

**When to use**

Use when an effect should complete successfully with a specific value without any errors
or external dependencies.

**Example** (Creating a successful effect)

```ts
import { Effect } from "effect"

// Creating an effect that represents a successful scenario
//
//      ┌─── Effect<number, never, never>
//      ▼
const success = Effect.succeed(42)
```

**See**

- `fail` to create an effect that represents a failure.

**Signature**

```ts
declare const succeed: <A>(value: A) => Effect<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L973)

Since v2.0.0