# filterEffectOrElse

Filters an effect with an effectful predicate, falling back to an alternative
effect if the predicate fails.

**Details**

This function applies a predicate to the result of an effect. If the
predicate evaluates to `false`, the effect falls back to the `orElse`
effect. The `orElse` effect can produce an alternative value or perform
additional computations.

To import and use `filterEffectOrElse` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.filterEffectOrElse
```

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
  // Use filterEffectOrElse with an effectful predicate
  Effect.filterEffectOrElse({
    predicate: (user) => Effect.succeed(user !== null),
    orElse: (user) => Effect.fail(new Error(`Unauthorized user: ${user}`))
  })
)
```

**Signature**

```ts
export declare const filterEffectOrElse: {
  <A, E2, R2, A2, E3, R3>(options: {
    readonly predicate: (a: NoInfer<A>) => Effect<boolean, E2, R2>
    readonly orElse: (a: NoInfer<A>) => Effect<A2, E3, R3>
  }): <E, R>(self: Effect<A, E, R>) => Effect<A | A2, E | E2 | E3, R | R2 | R3>
  <A, E, R, E2, R2, A2, E3, R3>(
    self: Effect<A, E, R>,
    options: { readonly predicate: (a: A) => Effect<boolean, E2, R2>; readonly orElse: (a: A) => Effect<A2, E3, R3> }
  ): Effect<A | A2, E | E2 | E3, R | R2 | R3>
}
```
