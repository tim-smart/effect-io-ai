# withEarlyRelease

Returns a new scoped workflow that returns the result of this workflow as
well as a finalizer that can be run to close the scope of this workflow.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.withEarlyRelease`.

### Signature

```typescript
export declare const withEarlyRelease: <R, E, A>(
  self: Effect<R, E, A>
) => Effect<Scope.Scope | R, E, [Effect<never, never, void>, A]>
```
