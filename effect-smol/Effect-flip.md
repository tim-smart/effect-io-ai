Package: `effect`<br />
Module: `Effect`<br />

## Effect.flip

Swaps an effect's success and failure channels.

**When to use**

Use to swap an `Effect`'s success and failure channels.

**Details**

For an `Effect<A, E, R>`, the returned effect has type `Effect<E, A, R>`.

**Example** (Swapping success and failure channels)

```ts
import { Effect } from "effect"

//      ┌─── Effect<number, string, never>
//      ▼
const program = Effect.fail("Oh uh!").pipe(Effect.as(2))

//      ┌─── Effect<string, number, never>
//      ▼
const flipped = Effect.flip(program)
```

**Signature**

```ts
declare const flip: <A, E, R>(self: Effect<A, E, R>) => Effect<E, A, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L2457)

Since v2.0.0