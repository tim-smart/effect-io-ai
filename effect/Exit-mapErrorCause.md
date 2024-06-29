# mapErrorCause

Maps over the `Cause` contained in the `Failure` of the specified exit using
the provided function.

To import and use `mapErrorCause` from the "Exit" module:

```ts
import * as Exit from "effect/Exit"
// Can be accessed like this
Exit.mapErrorCause
```

**Signature**

```ts
export declare const mapErrorCause: {
  <E, E2>(f: (cause: Cause.Cause<E>) => Cause.Cause<E2>): <A>(self: Exit<A, E>) => Exit<A, E2>
  <E, A, E2>(self: Exit<A, E>, f: (cause: Cause.Cause<E>) => Cause.Cause<E2>): Exit<A, E2>
}
```
