# scoped

Scopes all resources uses in this workflow to the lifetime of the workflow,
ensuring that their finalizers are run as soon as this workflow completes
execution, whether by success, failure, or interruption.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.scoped`.

### Signature

```typescript
export declare const scoped: <R, E, A>(effect: Effect<R, E, A>) => Effect<Exclude<R, Scope.Scope>, E, A>
```
