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
  <A, B extends A, E2>(
    refinement: Refinement<NoInfer<A>, B>,
    orFailWith: (a: NoInfer<A>) => E2
  ): <E, R>(self: Effect<A, E, R>) => Effect<B, E2 | E, R>
  <A, E2>(
    predicate: Predicate<NoInfer<A>>,
    orFailWith: (a: NoInfer<A>) => E2
  ): <E, R>(self: Effect<A, E, R>) => Effect<A, E2 | E, R>
  <A, B extends A>(
    refinement: Refinement<NoInfer<A>, B>
  ): <E, R>(self: Effect<A, E, R>) => Effect<B, Cause.NoSuchElementException | E, R>
  <A>(predicate: Predicate<NoInfer<A>>): <E, R>(self: Effect<A, E, R>) => Effect<A, Cause.NoSuchElementException | E, R>
  <A, E, R, B extends A, E2>(
    self: Effect<A, E, R>,
    refinement: Refinement<A, B>,
    orFailWith: (a: A) => E2
  ): Effect<B, E | E2, R>
  <A, E, R, E2>(self: Effect<A, E, R>, predicate: Predicate<A>, orFailWith: (a: A) => E2): Effect<A, E | E2, R>
  <A, E, R, B extends A>(
    self: Effect<A, E, R>,
    refinement: Refinement<A, B>
  ): Effect<B, E | Cause.NoSuchElementException, R>
  <A, E, R>(self: Effect<A, E, R>, predicate: Predicate<A>): Effect<A, E | Cause.NoSuchElementException, R>
}
```
