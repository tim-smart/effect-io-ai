Package: `effect`<br />
Module: `Effect`<br />

## Effect.whenFiberRef

Executes an effect conditionally based on the value of a `FiberRef` that
satisfies a predicate.

**Details**

This function enables you to execute an effect only when the value of a
specified `FiberRef` meets a certain condition defined by a predicate. If the
value satisfies the predicate, the effect is executed, and the result is
wrapped in an `Option.some`. If the predicate is not satisfied, the effect is
skipped, and the result is `Option.none`. In both cases, the current value of
the `FiberRef` is included in the result.

**Signature**

```ts
declare const whenFiberRef: { <S>(fiberRef: FiberRef.FiberRef<S>, predicate: Predicate<S>): <A, E, R>(self: Effect<A, E, R>) => Effect<[S, Option.Option<A>], E, R>; <A, E, R, S>(self: Effect<A, E, R>, fiberRef: FiberRef.FiberRef<S>, predicate: Predicate<S>): Effect<[S, Option.Option<A>], E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L8756)

Since v2.0.0