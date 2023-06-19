# catchAllDefect

Recovers from all defects with provided function.

**WARNING**: There is no sensible way to recover from defects. This
method should be used only at the boundary between Effect and an external
system, to transmit information on a defect for diagnostic or explanatory
purposes.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const catchAllDefect: {
  <R2, E2, A2>(f: (defect: unknown) => Effect<R2, E2, A2>): <R, E, A>(
    self: Effect<R, E, A>
  ) => Effect<R2 | R, E2 | E, A2 | A>
  <R, E, A, R2, E2, A2>(self: Effect<R, E, A>, f: (defect: unknown) => Effect<R2, E2, A2>): Effect<
    R | R2,
    E | E2,
    A | A2
  >
}
```
