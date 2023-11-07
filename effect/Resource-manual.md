# manual

Creates a new `Resource` value that must be manually refreshed by calling
the refresh method. Note that error retrying is not performed
automatically, so if you want to retry on errors, you should first apply
retry policies to the acquisition effect before passing it to this
constructor.

To import and use `manual` from the "Resource" module:

```ts
import * as Resource from 'effect/Resource'

// Can be accessed like this
Resource.manual
```

**Signature**

```ts
export declare const manual: <R, E, A>(
  acquire: Effect.Effect<R, E, A>
) => Effect.Effect<Scope.Scope | R, never, Resource<E, A>>
```
