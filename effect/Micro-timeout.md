# timeout

Returns an effect that will timeout this effect, that will fail with a
`TimeoutException` if the timeout elapses before the effect has produced a
value.

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
  (millis: number): <A, E, R>(self: Micro<A, E, R>) => Micro<A, E | TimeoutException, R>
  <A, E, R>(self: Micro<A, E, R>, millis: number): Micro<A, E | TimeoutException, R>
}
```
