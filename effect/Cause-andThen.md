# andThen

Sequences two `Cause`s. The second `Cause` can be dependent on the result of
the first `Cause`.

To import and use `andThen` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.andThen
```

**Signature**

```ts
export declare const andThen: {
  <E, E2>(f: (e: E) => Cause<E2>): (self: Cause<E>) => Cause<E2>
  <E2>(f: Cause<E2>): <E>(self: Cause<E>) => Cause<E2>
  <E, E2>(self: Cause<E>, f: (e: E) => Cause<E2>): Cause<E2>
  <E, E2>(self: Cause<E>, f: Cause<E2>): Cause<E2>
}
```
