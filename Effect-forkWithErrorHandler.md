# forkWithErrorHandler

Like fork but handles an error with the provided handler.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.forkWithErrorHandler`.

### Signature

```typescript
export declare const forkWithErrorHandler: {
  <E, X>(handler: (e: E) => Effect<never, never, X>): <R, A>(
    self: Effect<R, E, A>
  ) => Effect<R, never, Fiber.RuntimeFiber<E, A>>
  <R, E, A, X>(self: Effect<R, E, A>, handler: (e: E) => Effect<never, never, X>): Effect<
    R,
    never,
    Fiber.RuntimeFiber<E, A>
  >
}
```
