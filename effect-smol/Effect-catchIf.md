Package: `effect`<br />
Module: `Effect`<br />

## Effect.catchIf

Recovers from specific errors using a `Predicate` or `Refinement`.

**When to use**

Use when you need to recover from errors that match a condition.

**Details**

Use a `Refinement` for type narrowing or a `Predicate` for simple boolean
matching. Non-matching errors re-fail with the original cause. Defects and
interrupts are not caught.

**Example** (Recovering when a predicate matches)

```ts
import { Data, Effect, Filter } from "effect"

class NotFound extends Data.TaggedError("NotFound")<{ id: string }> {}

const program = Effect.fail(new NotFound({ id: "user-1" }))

// With a refinement
const recovered = program.pipe(
  Effect.catchIf(
    (error): error is NotFound => error._tag === "NotFound",
    (error) => Effect.succeed(`missing:${error.id}`)
  )
)

// With a Filter
const recovered2 = program.pipe(
  Effect.catchFilter(
    Filter.tagged("NotFound"),
    (error) => Effect.succeed(`missing:${error.id}`)
  )
)
```

**Signature**

```ts
declare const catchIf: { <E, EB extends E, A2, E2, R2, A3 = unassigned, E3 = never, R3 = never>(refinement: Predicate.Refinement<NoInfer<E>, EB>, f: (e: EB) => Effect<A2, E2, R2>, orElse?: ((e: Exclude<E, EB>) => Effect<A3, E3, R3>) | undefined): <A, R>(self: Effect<A, E, R>) => Effect<A | A2 | Exclude<A3, unassigned>, E2 | E3 | (A3 extends unassigned ? Exclude<E, EB> : never), R | R2 | R3>; <E, A2, E2, R2, A3 = unassigned, E3 = never, R3 = never>(predicate: Predicate.Predicate<NoInfer<E>>, f: (e: NoInfer<E>) => Effect<A2, E2, R2>, orElse?: ((e: NoInfer<E>) => Effect<A3, E3, R3>) | undefined): <A, R>(self: Effect<A, E, R>) => Effect<A | A2 | Exclude<A3, unassigned>, E2 | E3 | (A3 extends unassigned ? E : never), R | R2 | R3>; <A, E, R, EB extends E, A2, E2, R2, A3 = unassigned, E3 = never, R3 = never>(self: Effect<A, E, R>, refinement: Predicate.Refinement<E, EB>, f: (e: EB) => Effect<A2, E2, R2>, orElse?: ((e: Exclude<E, EB>) => Effect<A3, E3, R3>) | undefined): Effect<A | A2 | Exclude<A3, unassigned>, E2 | E3 | (A3 extends unassigned ? Exclude<E, EB> : never), R | R2 | R3>; <A, E, R, A2, E2, R2, A3 = unassigned, E3 = never, R3 = never>(self: Effect<A, E, R>, predicate: Predicate.Predicate<E>, f: (e: E) => Effect<A2, E2, R2>, orElse?: ((e: E) => Effect<A3, E3, R3>) | undefined): Effect<A | A2 | Exclude<A3, unassigned>, E2 | E3 | (A3 extends unassigned ? E : never), R | R2 | R3>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L3301)

Since v2.0.0