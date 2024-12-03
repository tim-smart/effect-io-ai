# mapBoth

The `mapBoth` function allows you to apply transformations to both the
error and success channels of an effect.

This function takes two map functions as arguments: one for the error channel
and one for the success channel. You can use it when you want to modify both
the error and the success values without altering the overall success or
failure status of the effect.

To import and use `mapBoth` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.mapBoth
```

**Example**

```ts
import { Effect } from "effect"

//      ┌─── Effect<number, string, never>
//      ▼
const simulatedTask = Effect.fail("Oh no!").pipe(Effect.as(1))

//      ┌─── Effect<boolean, Error, never>
//      ▼
const modified = Effect.mapBoth(simulatedTask, {
  onFailure: (message) => new Error(message),
  onSuccess: (n) => n > 0
})
```

**Signature**

```ts
export declare const mapBoth: {
  <E, E2, A, A2>(options: {
    readonly onFailure: (e: E) => E2
    readonly onSuccess: (a: A) => A2
  }): <R>(self: Effect<A, E, R>) => Effect<A2, E2, R>
  <A, E, R, E2, A2>(
    self: Effect<A, E, R>,
    options: { readonly onFailure: (e: E) => E2; readonly onSuccess: (a: A) => A2 }
  ): Effect<A2, E2, R>
}
```
