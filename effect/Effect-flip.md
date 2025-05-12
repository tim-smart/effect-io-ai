Package: `effect`<br />
Module: `Effect`<br />

## Effect.flip

Swaps the success and error channels of an effect.

**Details**

This function reverses the flow of an effect by swapping its success and
error channels. The success value becomes an error, and the error value
becomes a success.

**Example**

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L5082)

Since v2.0.0