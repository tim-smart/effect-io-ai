# tapUnexpected

Perform a side effect from unexpected errors of the given `Micro`.

To import and use `tapUnexpected` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.tapUnexpected
```

**Signature**

```ts
export declare const tapUnexpected: {
  <E, B, E2, R2>(f: (defect: unknown) => Micro<B, E2, R2>): <A, R>(self: Micro<A, E, R>) => Micro<A, E | E2, R2 | R>
  <A, E, R, B, E2, R2>(self: Micro<A, E, R>, f: (defect: unknown) => Micro<B, E2, R2>): Micro<A, E | E2, R | R2>
}
```
