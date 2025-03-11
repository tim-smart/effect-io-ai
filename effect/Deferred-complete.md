## complete

Completes the deferred with the result of the specified effect. If the
deferred has already been completed, the method will produce false.

Note that `Deferred.completeWith` will be much faster, so consider using
that if you do not need to memoize the result of the specified effect.

**Signature**

```ts
declare const complete: { <A, E>(effect: Effect.Effect<A, E>): (self: Deferred<A, E>) => Effect.Effect<boolean>; <A, E>(self: Deferred<A, E>, effect: Effect.Effect<A, E>): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Deferred.ts#L121)

Since v2.0.0