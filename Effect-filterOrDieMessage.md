# filterOrDieMessage

Filter the specified effect with the provided function, dying with specified
message if the predicate fails.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const filterOrDieMessage: {
  <A, B extends A>(f: Refinement<A, B>, message: string): <R, E>(self: Effect<R, E, A>) => Effect<R, E, B>
  <A>(f: Predicate<A>, message: string): <R, E>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A, B extends A>(self: Effect<R, E, A>, f: Refinement<A, B>, message: string): Effect<R, E, B>
  <R, E, A>(self: Effect<R, E, A>, f: Predicate<A>, message: string): Effect<R, E, A>
}
```
