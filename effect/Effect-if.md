Package: `effect`<br />
Module: `Effect`<br />

## Effect.if

Executes one of two effects based on a condition evaluated by an effectful predicate.

Use `if` to run one of two effects depending on whether the predicate effect
evaluates to `true` or `false`. If the predicate is `true`, the `onTrue` effect
is executed. If it is `false`, the `onFalse` effect is executed instead.

**Example** (Simulating a Coin Flip)

```ts
import { Effect, Random, Console } from "effect"

const flipTheCoin = Effect.if(Random.nextBoolean, {
  onTrue: () => Console.log("Head"), // Runs if the predicate is true
  onFalse: () => Console.log("Tail") // Runs if the predicate is false
})

Effect.runFork(flipTheCoin)
```

**Signature**

```ts
declare const if: { <A1, E1, R1, A2, E2, R2>(options: { readonly onTrue: LazyArg<Effect<A1, E1, R1>>; readonly onFalse: LazyArg<Effect<A2, E2, R2>>; }): <E = never, R = never>(self: boolean | Effect<boolean, E, R>) => Effect<A1 | A2, E1 | E2 | E, R1 | R2 | R>; <A1, E1, R1, A2, E2, R2, E = never, R = never>(self: boolean | Effect<boolean, E, R>, options: { readonly onTrue: LazyArg<Effect<A1, E1, R1>>; readonly onFalse: LazyArg<Effect<A2, E2, R2>>; }): Effect<A1 | A2, E1 | E2 | E, R1 | R2 | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L8325)

Since v2.0.0