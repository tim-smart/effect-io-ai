# as

Replaces this sink's result with the provided value.

To import and use `as` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.as
```

**Signature**

```ts
export declare const as: {
  <A2>(a: A2): <A, In, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A2, In, L, E, R>
  <A, In, L, E, R, A2>(self: Sink<A, In, L, E, R>, a: A2): Sink<A2, In, L, E, R>
}
```
