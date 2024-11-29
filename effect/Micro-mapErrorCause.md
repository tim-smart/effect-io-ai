# mapErrorCause

Transform the full `MicroCause` object of the given `Micro` effect.

To import and use `mapErrorCause` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.mapErrorCause
undefined

**Signature**

```ts
export declare const mapErrorCause: {
  <E, E2>(f: (e: MicroCause<E>) => MicroCause<E2>): <A, R>(self: Micro<A, E, R>) => Micro<A, E2, R>
  <A, E, R, E2>(self: Micro<A, E, R>, f: (e: MicroCause<E>) => MicroCause<E2>): Micro<A, E2, R>
}
```
