# die

Kills the `Deferred` with the specified defect, which will be propagated to
all fibers waiting on the value of the `Deferred`.

Part of the `Deferred` module, imported from `@effect/io/Deferred`.

**Signature**

```ts
export declare const die: {
  (defect: unknown): <E, A>(self: Deferred<E, A>) => Effect.Effect<never, never, boolean>
  <E, A>(self: Deferred<E, A>, defect: unknown): Effect.Effect<never, never, boolean>
}
```
