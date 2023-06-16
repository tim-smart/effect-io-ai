# supervised

Returns an effect with the behavior of this one, but where all child fibers
forked in the effect are reported to the specified supervisor.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const supervised: {
  <X>(supervisor: Supervisor.Supervisor<X>): <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A, X>(self: Effect<R, E, A>, supervisor: Supervisor.Supervisor<X>): Effect<R, E, A>
}
```
