# interruptWhenPossible

Interrupts the child effect when requests are no longer needed

Part of the `Request` module, imported from `@effect/io/Request`.

**Signature**

```ts
export declare const interruptWhenPossible: {
  (all: Iterable<Request<any, any>>): <R, E, A>(self: Effect.Effect<R, E, A>) => Effect.Effect<R, E, void>
  <R, E, A>(self: Effect.Effect<R, E, A>, all: Iterable<Request<any, any>>): Effect.Effect<R, E, void>
}
```
