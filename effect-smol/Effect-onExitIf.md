Package: `effect`<br />
Module: `Effect`<br />

## Effect.onExitIf

Runs the cleanup effect only when the `Exit` satisfies the provided
predicate.

**Example**

```ts
import { Console, Effect, Exit } from "effect"

const program = Effect.onExitIf(
  Effect.succeed(42),
  Exit.isSuccess,
  (exit) =>
    Exit.isSuccess(exit)
      ? Console.log(`Succeeded with: ${exit.value}`)
      : Effect.void
)
```

**Signature**

```ts
declare const onExitIf: { <A, E, XE, XR>(predicate: Predicate.Predicate<Exit.Exit<NoInfer<A>, NoInfer<E>>>, f: (exit: Exit.Exit<NoInfer<A>, NoInfer<E>>) => Effect<void, XE, XR>): <R>(self: Effect<A, E, R>) => Effect<A, E | XE, R | XR>; <A, E, R, XE, XR>(self: Effect<A, E, R>, predicate: Predicate.Predicate<Exit.Exit<NoInfer<A>, NoInfer<E>>>, f: (exit: Exit.Exit<NoInfer<A>, NoInfer<E>>) => Effect<void, XE, XR>): Effect<A, E | XE, R | XR>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L6573)

Since v4.0.0