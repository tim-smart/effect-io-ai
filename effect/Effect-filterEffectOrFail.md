Package: `effect`<br />
Module: `Effect`<br />

## Effect.filterEffectOrFail

Filters an effect with an effectful predicate, failing with a custom error if the predicate fails.

**Details**

This function applies a predicate to the result of an effect. If the
predicate evaluates to `false`, the effect fails with a custom error
generated by the `orFailWith` function.

**When to Use**

This is useful for enforcing constraints and treating violations as
recoverable errors.

**Example**

```ts
import { Effect, pipe } from "effect"

// Define a user interface
interface User {
  readonly name: string
}

// Simulate an asynchronous authentication function
declare const auth: () => Promise<User | null>

const program = pipe(
  Effect.promise(() => auth()),
  // Use filterEffectOrFail with an effectful predicate
  Effect.filterEffectOrFail({
    predicate: (user) => Effect.succeed(user !== null),
    orFailWith: () => new Error("Unauthorized")
  }),
)
```

**Signature**

```ts
declare const filterEffectOrFail: { <A, E2, R2, E3>(options: { readonly predicate: (a: NoInfer<A>) => Effect<boolean, E2, R2>; readonly orFailWith: (a: NoInfer<A>) => E3; }): <E, R>(self: Effect<A, E, R>) => Effect<A, E | E2 | E3, R | R2>; <A, E, R, E2, R2, E3>(self: Effect<A, E, R>, options: { readonly predicate: (a: A) => Effect<boolean, E2, R2>; readonly orFailWith: (a: A) => E3; }): Effect<A, E | E2 | E3, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L8587)

Since v3.13.0