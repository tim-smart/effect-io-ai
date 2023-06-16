# filterOrDie

Filter the specified effect with the provided function, dying with specified
defect if the predicate fails.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.filterOrDie`.

### Signature

```typescript
export declare const filterOrDie: {
  <A, B extends A>(f: Refinement<A, B>, defect: LazyArg<unknown>): <R, E>(self: Effect<R, E, A>) => Effect<R, E, B>
  <A>(f: Predicate<A>, defect: LazyArg<unknown>): <R, E>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A, B extends A>(self: Effect<R, E, A>, f: Refinement<A, B>, defect: LazyArg<unknown>): Effect<R, E, B>
  <R, E, A>(self: Effect<R, E, A>, f: Predicate<A>, defect: LazyArg<unknown>): Effect<R, E, A>
}
```
