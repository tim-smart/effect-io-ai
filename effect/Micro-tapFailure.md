# tapFailure

Perform a side effect using the full `Failure` object of the given `Micro`.

To import and use `tapFailure` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.tapFailure
```

**Signature**

```ts
export declare const tapFailure: {
  <E, B, E2, R2>(f: (a: Failure<E>) => Micro<B, E2, R2>): <A, R>(self: Micro<A, E, R>) => Micro<A, E | E2, R2 | R>
  <A, E, R, B, E2, R2>(self: Micro<A, E, R>, f: (a: Failure<E>) => Micro<B, E2, R2>): Micro<A, E | E2, R | R2>
}
```
