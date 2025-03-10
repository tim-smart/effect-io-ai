# auto

Creates a new `Resource` value that is automatically refreshed according to
the specified policy. Note that error retrying is not performed
automatically, so if you want to retry on errors, you should first apply
retry policies to the acquisition effect before passing it to this
constructor.

To import and use `auto` from the "Resource" module:

```ts
import * as Resource from "effect/Resource"
// Can be accessed like this
Resource.auto
```

**Signature**

```ts
export declare const auto: <A, E, R, Out, R2>(
  acquire: Effect.Effect<A, E, R>,
  policy: Schedule.Schedule<Out, unknown, R2>
) => Effect.Effect<Resource<A, E>, never, R | R2 | Scope.Scope>
```
