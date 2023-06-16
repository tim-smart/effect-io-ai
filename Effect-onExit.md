# onExit

Ensures that a cleanup functions runs, whether this effect succeeds, fails,
or is interrupted.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const onExit: {
  <E, A, R2, X>(cleanup: (exit: Exit.Exit<E, A>) => Effect<R2, never, X>): <R>(
    self: Effect<R, E, A>
  ) => Effect<R2 | R, E, A>
  <R, E, A, R2, X>(self: Effect<R, E, A>, cleanup: (exit: Exit.Exit<E, A>) => Effect<R2, never, X>): Effect<
    R | R2,
    E,
    A
  >
}
```
