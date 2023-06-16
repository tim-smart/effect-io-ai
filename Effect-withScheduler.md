# withScheduler

Sets the provided scheduler for usage in the wrapped effect

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const withScheduler: {
  (scheduler: Scheduler): <R, E, B>(self: Effect<R, E, B>) => Effect<R, E, B>
  <R, E, B>(self: Effect<R, E, B>, scheduler: Scheduler): Effect<R, E, B>
}
```
