# mapAttempt

Maps the value produced by the effect with the specified function that may
throw exceptions but is otherwise pure, translating any thrown exceptions
into typed failed effects.

To import and use `mapAttempt` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.mapAttempt
```

**Signature**

```ts
export declare const mapAttempt: {
  <A, B>(f: (a: A) => B): <E, R>(self: STM<A, E, R>) => STM<B, unknown, R>
  <A, E, R, B>(self: STM<A, E, R>, f: (a: A) => B): STM<B, unknown, R>
}
```
