# flip

Swaps the success and error channels of an effect.

**Details**

This function reverses the flow of an effect by swapping its success and
error channels. The success value becomes an error, and the error value
becomes a success.

To import and use `flip` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.flip
```

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
export declare const flip: <A, E, R>(self: Effect<A, E, R>) => Effect<E, A, R>
```
