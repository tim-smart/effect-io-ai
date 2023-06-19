# succeed

Completes the `Deferred` with the specified value.

Part of the `Deferred` module, imported from `@effect/io/Deferred`.

**Signature**

```ts
export declare const succeed: {
  <A>(value: A): <E>(self: Deferred<E, A>) => Effect.Effect<never, never, boolean>
  <E, A>(self: Deferred<E, A>, value: A): Effect.Effect<never, never, boolean>
}
```
