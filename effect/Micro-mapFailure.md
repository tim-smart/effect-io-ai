# mapFailure

Transform the full `Failure` object of the given `Micro` effect.

To import and use `mapFailure` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.mapFailure
```

**Signature**

```ts
export declare const mapFailure: {
  <E, E2>(f: (a: Failure<E>) => Failure<E2>): <A, R>(self: Micro<A, E, R>) => Micro<A, E2, R>
  <A, E, R, E2>(self: Micro<A, E, R>, f: (a: Failure<E>) => Failure<E2>): Micro<A, E2, R>
}
```
