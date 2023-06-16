# trySuspend

Returns a lazily constructed effect, whose construction may itself require
effects. When no context is required (i.e., when `R == unknown`) it is
conceptually equivalent to `flatten(succeed(io))`.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const trySuspend: <R, E, A>(evaluate: LazyArg<Effect<R, E, A>>) => Effect<R, unknown, A>
```
