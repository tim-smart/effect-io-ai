# trySuspend

Returns a lazily constructed effect, whose construction may itself require
effects. When no context is required (i.e., when `R == unknown`) it is
conceptually equivalent to `flatten(succeed(io))`.

To import and use `trySuspend` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.trySuspend
```

**Signature**

```ts
export declare const trySuspend: <R, E, A>(evaluate: LazyArg<Effect<R, E, A>>) => Effect<R, unknown, A>
```
