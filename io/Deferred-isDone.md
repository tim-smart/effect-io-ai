# isDone

Returns `true` if this `Deferred` has already been completed with a value or
an error, `false` otherwise.

Part of the `Deferred` module, imported from `@effect/io/Deferred`.

**Signature**

```ts
export declare const isDone: <E, A>(self: Deferred<E, A>) => Effect.Effect<never, never, boolean>
```
