# orDieWith

Keeps none of the errors, and terminates the fiber with them, using the
specified function to convert the `E` into a `Throwable`.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.orDieWith`.

### Signature

```typescript
export declare const orDieWith: {
  <E>(f: (error: E) => unknown): <R, A>(self: Effect<R, E, A>) => Effect<R, never, A>
  <R, E, A>(self: Effect<R, E, A>, f: (error: E) => unknown): Effect<R, never, A>
}
```
