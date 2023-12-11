# filterOrFail

Filter the specified effect with the provided function, failing with specified
error if the predicate fails.

In addition to the filtering capabilities discussed earlier, you have the option to further
refine and narrow down the type of the success channel by providing a
[user-defined type guard](https://www.typescriptlang.org/docs/handbook/2/narrowing.html#using-type-predicates).
Let's explore this concept through an example:

To import and use `filterOrFail` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.filterOrFail
```

**Example**

```ts
import { Effect, pipe } from "effect"

// Define a user interface
interface User {
  readonly name: string
}

// Assume an asynchronous authentication function
declare const auth: () => Promise<User | null>

const program = pipe(
  Effect.promise(() => auth()),
  Effect.filterOrFail(
    // Define a guard to narrow down the type
    (user): user is User => user !== null,
    () => new Error("Unauthorized")
  ),
  Effect.map((user) => user.name) // The 'user' here has type `User`, not `User | null`
)
```

**Signature**

```ts
export declare const filterOrFail: {
  <A, B extends A, X extends A, E2>(
    filter: Refinement<A, B>,
    orFailWith: (a: X) => E2
  ): <R, E>(self: Effect<R, E, A>) => Effect<R, E2 | E, B>
  <A, X extends A, Y extends A, E2>(
    filter: Predicate<X>,
    orFailWith: (a: Y) => E2
  ): <R, E>(self: Effect<R, E, A>) => Effect<R, E2 | E, A>
  <R, E, A, B extends A, X extends A, E2>(
    self: Effect<R, E, A>,
    filter: Refinement<A, B>,
    orFailWith: (a: X) => E2
  ): Effect<R, E | E2, B>
  <R, E, A, X extends A, Y extends A, E2>(
    self: Effect<R, E, A>,
    filter: Predicate<X>,
    orFailWith: (a: Y) => E2
  ): Effect<R, E | E2, A>
}
```
