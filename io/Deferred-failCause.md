# failCause

Fails the `Deferred` with the specified `Cause`, which will be propagated to
all fibers waiting on the value of the `Deferred`.

Part of the `Deferred` module, imported from `@effect/io/Deferred`.

**Signature**

```ts
export declare const failCause: {
  <E>(cause: Cause.Cause<E>): <A>(self: Deferred<E, A>) => Effect.Effect<never, never, boolean>
  <E, A>(self: Deferred<E, A>, cause: Cause.Cause<E>): Effect.Effect<never, never, boolean>
}
```
