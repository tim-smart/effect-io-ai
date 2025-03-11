## completeWith

Completes the deferred with the result of the specified effect. If the
deferred has already been completed, the method will produce false.

**Signature**

```ts
declare const completeWith: { <A, E>(effect: Effect.Effect<A, E>): (self: Deferred<A, E>) => Effect.Effect<boolean>; <A, E>(self: Deferred<A, E>, effect: Effect.Effect<A, E>): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Deferred.ts#L133)

Since v2.0.0