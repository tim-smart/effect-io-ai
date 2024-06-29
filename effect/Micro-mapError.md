# mapError

Transform any expected errors of the given `Micro` effect.

To import and use `mapError` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.mapError
```

**Signature**

```ts
export declare const mapError: {
  <E, E2>(f: (a: E) => E2): <A, R>(self: Micro<A, E, R>) => Micro<A, E2, R>
  <A, E, R, E2>(self: Micro<A, E, R>, f: (a: E) => E2): Micro<A, E2, R>
}
```
