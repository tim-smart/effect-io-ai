# timeoutOrElse

Returns an effect that will timeout this effect, that will execute the
fallback effect if the timeout elapses before the effect has produced a value.

If the timeout elapses, the running effect will be safely interrupted.

To import and use `timeoutOrElse` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.timeoutOrElse
```

**Signature**

```ts
export declare const timeoutOrElse: {
  <A2, E2, R2>(options: {
    readonly duration: number
    readonly onTimeout: LazyArg<Micro<A2, E2, R2>>
  }): <A, E, R>(self: Micro<A, E, R>) => Micro<A2 | A, E2 | E, R2 | R>
  <A, E, R, A2, E2, R2>(
    self: Micro<A, E, R>,
    options: { readonly duration: number; readonly onTimeout: LazyArg<Micro<A2, E2, R2>> }
  ): Micro<A | A2, E | E2, R | R2>
}
```
