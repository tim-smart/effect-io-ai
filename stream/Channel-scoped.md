# scoped

Use a scoped effect to emit an output element.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const scoped: <R, E, A>(
  effect: Effect.Effect<Scope.Scope | R, E, A>
) => Channel<Exclude<R, Scope.Scope>, unknown, unknown, unknown, E, A, unknown>
```
