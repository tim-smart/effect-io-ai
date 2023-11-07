# mapError

Transforms the errors emitted by this sink using `f`.

To import and use `mapError` from the "Sink" module:

```ts
import * as Sink from 'effect/Sink'

// Can be accessed like this
Sink.mapError
```

**Signature**

```ts
export declare const mapError: {
  <E, E2>(f: (error: E) => E2): <R, In, L, Z>(self: Sink<R, E, In, L, Z>) => Sink<R, E2, In, L, Z>
  <R, In, L, Z, E, E2>(self: Sink<R, E, In, L, Z>, f: (error: E) => E2): Sink<R, E2, In, L, Z>
}
```
