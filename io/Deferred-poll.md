# poll

Returns a `Some<Effect<R, E, A>>` from the `Deferred` if this `Deferred` has
already been completed, `None` otherwise.

Part of the `Deferred` module, imported from `@effect/io/Deferred`.

**Signature**

```ts
export declare const poll: <E, A>(
  self: Deferred<E, A>
) => Effect.Effect<never, never, Option.Option<Effect.Effect<never, E, A>>>
```
