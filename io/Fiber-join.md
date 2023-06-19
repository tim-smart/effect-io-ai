# join

Joins the fiber, which suspends the joining fiber until the result of the
fiber has been determined. Attempting to join a fiber that has erred will
result in a catchable error. Joining an interrupted fiber will result in an
"inner interruption" of this fiber, unlike interruption triggered by
another fiber, "inner interruption" can be caught and recovered.

Part of the `Fiber` module, imported from `@effect/io/Fiber`.

**Signature**

```ts
export declare const join: <E, A>(self: Fiber<E, A>) => Effect.Effect<never, E, A>
```
