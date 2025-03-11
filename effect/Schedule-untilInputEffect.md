## untilInputEffect

Returns a new schedule that stops execution when the given effectful
predicate on the input evaluates to `true`.

**Details**

This function modifies an existing schedule so that it continues executing
only while the provided effectful predicate returns `false` for incoming
inputs. The predicate is an `Effect`, meaning it can involve asynchronous
computations or dependency-based logic.

**See**

- `untilInput` If you need to use a pure predicate.

**Signature**

```ts
declare const untilInputEffect: { <In, R2>(f: (input: In) => Effect.Effect<boolean, never, R2>): <Out, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R2 | R>; <Out, In, R, R2>(self: Schedule<Out, In, R>, f: (input: In) => Effect.Effect<boolean, never, R2>): Schedule<Out, In, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1948)

Since v2.0.0