# auto

Creates a new `Resource` value that is automatically refreshed according to
the specified policy. Note that error retrying is not performed
automatically, so if you want to retry on errors, you should first apply
retry policies to the acquisition effect before passing it to this
constructor.

To import and use `auto` from the "Resource" module:

```ts
import * as Resource from '@effect/io/Resource'

// Can be accessed like this
Resource.auto
```

**Signature**

```ts
export declare const auto: <R, E, A, R2, Out>(
  acquire: Effect.Effect<R, E, A>,
  policy: Schedule.Schedule<R2, unknown, Out>
) => Effect.Effect<Scope.Scope | R | R2, never, Resource<E, A>>
```
