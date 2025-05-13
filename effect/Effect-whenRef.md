Package: `effect`<br />
Module: `Effect`<br />

## Effect.whenRef

Executes an effect conditionally based on the value of a `Ref` that satisfies
a predicate.

**Details**

This function allows you to execute an effect only when the value of a
specified `Ref` meets a condition defined by a predicate. If the value
satisfies the predicate, the effect is executed, and the result is wrapped in
an `Option.some`. If the predicate is not satisfied, the effect is skipped,
and the result is `Option.none`. In both cases, the current value of the
`Ref` is included in the result.

**Signature**

```ts
declare const whenRef: { <S>(ref: Ref.Ref<S>, predicate: Predicate<S>): <A, E, R>(self: Effect<A, E, R>) => Effect<[S, Option.Option<A>], E, R>; <A, E, R, S>(self: Effect<A, E, R>, ref: Ref.Ref<S>, predicate: Predicate<S>): Effect<[S, Option.Option<A>], E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L8759)

Since v2.0.0