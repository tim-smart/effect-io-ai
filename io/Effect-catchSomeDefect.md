# catchSomeDefect

Recovers from some or all of the defects with provided partial function.

**WARNING**: There is no sensible way to recover from defects. This
method should be used only at the boundary between Effect and an external
system, to transmit information on a defect for diagnostic or explanatory
purposes.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const catchSomeDefect: {
  <R2, E2, A2>(pf: (defect: unknown) => Option.Option<Effect<R2, E2, A2>>): <R, E, A>(
    self: Effect<R, E, A>
  ) => Effect<R2 | R, E2 | E, A2 | A>
  <R, E, A, R2, E2, A2>(self: Effect<R, E, A>, pf: (defect: unknown) => Option.Option<Effect<R2, E2, A2>>): Effect<
    R | R2,
    E | E2,
    A | A2
  >
}
```
