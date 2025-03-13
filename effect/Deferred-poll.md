Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.poll

Returns a `Some<Effect<A, E, R>>` from the `Deferred` if this `Deferred` has
already been completed, `None` otherwise.

**Signature**

```ts
declare const poll: <A, E>(self: Deferred<A, E>) => Effect.Effect<Option.Option<Effect.Effect<A, E>>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Deferred.ts#L260)

Since v2.0.0