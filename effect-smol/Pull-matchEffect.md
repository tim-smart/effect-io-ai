Package: `effect`<br />
Module: `Pull`<br />

## Pull.matchEffect

Pattern matches on a Pull, handling success, failure, and done cases.

**Example**

```ts
import { Cause, Effect, Pull } from "effect"

const pull = Cause.done("stream ended")

const result = Pull.matchEffect(pull, {
  onSuccess: (value) => Effect.succeed(`Got value: ${value}`),
  onFailure: (cause) => Effect.succeed(`Got error: ${cause}`),
  onDone: (leftover) => Effect.succeed(`Stream halted with: ${leftover}`)
})
```

**Signature**

```ts
declare const matchEffect: { <A, E, L, AS, ES, RS, AF, EF, RF, AH, EH, RH>(options: { readonly onSuccess: (value: A) => Effect<AS, ES, RS>; readonly onFailure: (failure: Cause.Cause<E>) => Effect<AF, EF, RF>; readonly onDone: (leftover: L) => Effect<AH, EH, RH>; }): <R>(self: Pull<A, E, L, R>) => Effect<AS | AF | AH, ES | EF | EH, R | RS | RF | RH>; <A, E, L, R, AS, ES, RS, AF, EF, RF, AH, EH, RH>(self: Pull<A, E, L, R>, options: { readonly onSuccess: (value: A) => Effect<AS, ES, RS>; readonly onFailure: (failure: Cause.Cause<E>) => Effect<AF, EF, RF>; readonly onDone: (leftover: L) => Effect<AH, EH, RH>; }): Effect<AS | AF | AH, ES | EF | EH, R | RS | RF | RH>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pull.ts#L185)

Since v4.0.0