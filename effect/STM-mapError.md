# mapError

Maps from one error type to another.

To import and use `mapError` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.mapError
```

**Signature**

```ts
export declare const mapError: {
  <E, E2>(f: (error: E) => E2): <R, A>(self: STM<A, E, R>) => STM<A, E2, R>
  <R, A, E, E2>(self: STM<A, E, R>, f: (error: E) => E2): STM<A, E2, R>
}
```
