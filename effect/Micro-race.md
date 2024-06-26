# race

Returns an effect that races two effects, yielding the value of the first
effect to succeed. Losers of the race will be interrupted immediately

To import and use `race` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.race
```

**Signature**

```ts
export declare const race: {
  <A2, E2, R2>(that: Micro<A2, E2, R2>): <A, E, R>(self: Micro<A, E, R>) => Micro<A2 | A, E2 | E, R2 | R>
  <A, E, R, A2, E2, R2>(self: Micro<A, E, R>, that: Micro<A2, E2, R2>): Micro<A | A2, E | E2, R | R2>
}
```
