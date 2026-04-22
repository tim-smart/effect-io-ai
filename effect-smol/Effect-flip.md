Package: `effect`<br />
Module: `Effect`<br />

## Effect.flip

The `flip` function swaps the success and error channels of an effect,
so that the success becomes the error, and the error becomes the success.

This function is useful when you need to reverse the flow of an effect,
treating the previously successful values as errors and vice versa. This can
be helpful in scenarios where you want to handle a success as a failure or
treat an error as a valid result.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L2535)

Since v2.0.0