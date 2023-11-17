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
  <E, E2>(f: (error: E) => E2): <R, A>(self: STM<R, E, A>) => STM<R, E2, A>
  <R, A, E, E2>(self: STM<R, E, A>, f: (error: E) => E2): STM<R, E2, A>
}
```
