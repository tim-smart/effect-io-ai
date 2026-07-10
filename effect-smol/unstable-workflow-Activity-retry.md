Package: `effect`<br />
Module: `Activity`<br />

## Activity.retry

Retries an effect with `Effect.retry` while updating `CurrentAttempt` for
each attempt.

**Signature**

```ts
declare const retry: { <E, O extends Types.NoExcessProperties<Omit<Effect.Retry.Options<E>, "schedule">, O>>(options: O): <A, R>(self: Effect.Effect<A, E, R>) => Effect.Retry.Return<R, E, A, O>; <A, E, R, O extends Types.NoExcessProperties<Omit<Effect.Retry.Options<E>, "schedule">, O>>(self: Effect.Effect<A, E, R>, options: O): Effect.Retry.Return<R, E, A, O>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Activity.ts#L210)

Since v4.0.0