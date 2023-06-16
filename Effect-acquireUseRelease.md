# acquireUseRelease

This function is used to ensure that an `Effect` value that represents the
acquisition of a resource (for example, opening a file, launching a thread,
etc.) will not be interrupted, and that the resource will always be released
when the `Effect` value completes execution.

`acquireUseRelease` does the following:

1. Ensures that the `Effect` value that acquires the resource will not be
   interrupted. Note that acquisition may still fail due to internal
   reasons (such as an uncaught exception).
2. Ensures that the `release` `Effect` value will not be interrupted,
   and will be executed as long as the acquisition `Effect` value
   successfully acquires the resource.

During the time period between the acquisition and release of the resource,
the `use` `Effect` value will be executed.

If the `release` `Effect` value fails, then the entire `Effect` value will
fail, even if the `use` `Effect` value succeeds. If this fail-fast behavior
is not desired, errors produced by the `release` `Effect` value can be caught
and ignored.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const acquireUseRelease: {
  <A, R2, E2, A2, R3, X>(
    use: (a: A) => Effect<R2, E2, A2>,
    release: (a: A, exit: Exit.Exit<E2, A2>) => Effect<R3, never, X>
  ): <R, E>(acquire: Effect<R, E, A>) => Effect<R2 | R3 | R, E2 | E, A2>
  <R, E, A, R2, E2, A2, R3, X>(
    acquire: Effect<R, E, A>,
    use: (a: A) => Effect<R2, E2, A2>,
    release: (a: A, exit: Exit.Exit<E2, A2>) => Effect<R3, never, X>
  ): Effect<R | R2 | R3, E | E2, A2>
}
```
