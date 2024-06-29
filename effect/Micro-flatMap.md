# flatMap

Map the success value of this `Micro` effect to another `Micro` effect, then
flatten the result.

To import and use `flatMap` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.flatMap
```

**Signature**

```ts
export declare const flatMap: {
  <A, B, E2, R2>(f: (a: A) => Micro<B, E2, R2>): <E, R>(self: Micro<A, E, R>) => Micro<B, E2 | E, R2 | R>
  <A, E, R, B, E2, R2>(self: Micro<A, E, R>, f: (a: A) => Micro<B, E2, R2>): Micro<B, E | E2, R | R2>
}
```
