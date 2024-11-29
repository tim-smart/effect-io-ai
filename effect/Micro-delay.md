# delay

Returns an effect that will delay the execution of this effect by the
specified duration.

To import and use `delay` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.delay
undefined

**Signature**

```ts
export declare const delay: {
  (millis: number): <A, E, R>(self: Micro<A, E, R>) => Micro<A, E, R>
  <A, E, R>(self: Micro<A, E, R>, millis: number): Micro<A, E, R>
}
```
