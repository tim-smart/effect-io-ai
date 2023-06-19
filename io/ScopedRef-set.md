# set

Sets the value of this reference to the specified resourcefully-created
value. Any resources associated with the old value will be released.

This method will not return until either the reference is successfully
changed to the new value, with old resources released, or until the attempt
to acquire a new value fails.

Part of the `ScopedRef` module, imported from `@effect/io/ScopedRef`.

**Signature**

```ts
export declare const set: {
  <A, R, E>(acquire: Effect.Effect<R, E, A>): (self: ScopedRef<A>) => Effect.Effect<Exclude<R, Scope.Scope>, E, void>
  <A, R, E>(self: ScopedRef<A>, acquire: Effect.Effect<R, E, A>): Effect.Effect<Exclude<R, Scope.Scope>, E, void>
}
```
