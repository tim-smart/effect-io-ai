Package: `effect`<br />
Module: `Stream`<br />

## Stream.catchIf

Recovers from errors that match a predicate by switching to a recovery stream.

When a failure matches the filter, the stream switches to the recovery
stream. Non-matching failures propagate downstream, so the error type is
preserved unless the filter narrows it.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Stream.catchSome`

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.make(1, 2).pipe(
  Stream.concat(Stream.fail(42)),
  Stream.catchIf(
    (error): error is 42 => error === 42,
    () => Stream.make(999)
  )
)

const program = Effect.gen(function*() {
  const values = yield* Stream.runCollect(stream)
  yield* Console.log(values)
  // Output: [ 1, 2, 999 ]
})

Effect.runPromise(program)
```

**Signature**

```ts
declare const catchIf: { <E, EB extends E, A2, E2, R2, A3 = never, E3 = Exclude<E, EB>, R3 = never>(refinement: Refinement<NoInfer<E>, EB>, f: (e: EB) => Stream<A2, E2, R2>, orElse?: ((e: Exclude<E, EB>) => Stream<A3, E3, R3>) | undefined): <A, R>(self: Stream<A, E, R>) => Stream<A2 | A | A3, E2 | E3, R2 | R | R3>; <E, A2, E2, R2, A3 = never, E3 = E, R3 = never>(predicate: Predicate<NoInfer<E>>, f: (e: NoInfer<E>) => Stream<A2, E2, R2>, orElse?: ((e: NoInfer<E>) => Stream<A3, E3, R3>) | undefined): <A, R>(self: Stream<A, E, R>) => Stream<A2 | A | A3, E2 | E3, R2 | R | R3>; <A, E, R, EB extends E, A2, E2, R2, A3 = never, E3 = Exclude<E, EB>, R3 = never>(self: Stream<A, E, R>, refinement: Refinement<E, EB>, f: (e: EB) => Stream<A2, E2, R2>, orElse?: ((e: Exclude<E, EB>) => Stream<A3, E3, R3>) | undefined): Stream<A | A2 | A3, E2 | E3, R | R2 | R3>; <A, E, R, A2, E2, R2, A3 = never, E3 = E, R3 = never>(self: Stream<A, E, R>, predicate: Predicate<E>, f: (e: E) => Stream<A2, E2, R2>, orElse?: ((e: E) => Stream<A3, E3, R3>) | undefined): Stream<A | A2 | A3, E2 | E3, R | R2 | R3>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L4703)

Since v4.0.0