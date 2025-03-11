## set

Sets the value of this reference to the specified resourcefully-created
value. Any resources associated with the old value will be released.

This method will not return until either the reference is successfully
changed to the new value, with old resources released, or until the attempt
to acquire a new value fails.

**Signature**

```ts
declare const set: { <A, R, E>(acquire: Effect.Effect<A, E, R>): (self: ScopedRef<A>) => Effect.Effect<void, E, Exclude<R, Scope.Scope>>; <A, R, E>(self: ScopedRef<A>, acquire: Effect.Effect<A, E, R>): Effect.Effect<void, E, Exclude<R, Scope.Scope>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ScopedRef.ts#L114)

Since v2.0.0