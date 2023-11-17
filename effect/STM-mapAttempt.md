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
  <A, B>(f: (a: A) => B): <R, E>(self: STM<R, E, A>) => STM<R, unknown, B>
  <R, E, A, B>(self: STM<R, E, A>, f: (a: A) => B): STM<R, unknown, B>
}
```
