Package: `effect`<br />
Module: `Effect`<br />

## Effect.using

Scopes all resources acquired by one effect to the lifetime of another
effect.

**Details**

This function allows you to scope the resources acquired by one effect
(`self`) to the lifetime of another effect (`use`). This ensures that the
resources are cleaned up as soon as the `use` effect completes, regardless of
how the `use` effect ends (success, failure, or interruption).

**Example**

```ts
import { Console, Effect } from "effect"

const acquire = Console.log("Acquiring resource").pipe(
  Effect.as(1),
  Effect.tap(Effect.addFinalizer(() => Console.log("Releasing resource")))
)
const use = (resource: number) => Console.log(`Using resource: ${resource}`)

const program = acquire.pipe(Effect.using(use))

Effect.runFork(program)
// Output:
// Acquiring resource
// Using resource: 1
// Releasing resource
```

**See**

- `scopedWith` Manage scoped operations with a temporary scope.

**Signature**

```ts
declare const using: { <A, A2, E2, R2>(use: (a: A) => Effect<A2, E2, R2>): <E, R>(self: Effect<A, E, R>) => Effect<A2, E2 | E, R2 | Exclude<R, Scope.Scope>>; <A, E, R, A2, E2, R2>(self: Effect<A, E, R>, use: (a: A) => Effect<A2, E2, R2>): Effect<A2, E | E2, R2 | Exclude<R, Scope.Scope>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L6070)

Since v2.0.0