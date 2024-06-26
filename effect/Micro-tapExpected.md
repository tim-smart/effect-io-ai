# tapExpected

Perform a side effect from expected errors of the given `Micro`.

To import and use `tapExpected` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.tapExpected
```

**Signature**

```ts
export declare const tapExpected: {
  <E, B, E2, R2>(f: (a: NoInfer<E>) => Micro<B, E2, R2>): <A, R>(self: Micro<A, E, R>) => Micro<A, E | E2, R2 | R>
  <A, E, R, B, E2, R2>(self: Micro<A, E, R>, f: (a: NoInfer<E>) => Micro<B, E2, R2>): Micro<A, E | E2, R | R2>
}
```
