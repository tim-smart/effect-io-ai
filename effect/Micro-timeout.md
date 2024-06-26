# timeout

Returns an effect that will timeout this effect, succeeding with a `None`
if the timeout elapses before the effect has produced a value; and `Some` of
the produced value otherwise.

If the timeout elapses, the running effect will be safely interrupted.

To import and use `timeout` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.timeout
```

**Signature**

```ts
export declare const timeout: {
  (millis: number): <A, E, R>(self: Micro<A, E, R>) => Micro<Option.Option<A>, E, R>
  <A, E, R>(self: Micro<A, E, R>, millis: number): Micro<Option.Option<A>, E, R>
}
```
