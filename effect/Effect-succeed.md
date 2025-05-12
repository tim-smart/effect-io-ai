Package: `effect`<br />
Module: `Effect`<br />

## Effect.succeed

Creates an `Effect` that always succeeds with a given value.

**When to Use**

Use this function when you need an effect that completes successfully with a
specific value without any errors or external dependencies.

**Example** (Creating a Successful Effect)

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L3149)

Since v2.0.0