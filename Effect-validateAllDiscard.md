# validateAllDiscard

Feeds elements of type `A` to `f` and accumulates all errors, discarding
the successes.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.validateAllDiscard`.

### Signature

```typescript
export declare const validateAllDiscard: {
  <R, E, A, X>(f: (a: A) => Effect<R, E, X>): (elements: Iterable<A>) => Effect<R, E[], void>
  <R, E, A, X>(elements: Iterable<A>, f: (a: A) => Effect<R, E, X>): Effect<R, E[], void>
}
```
