# whileInput

Returns a new schedule that continues for as long the specified predicate
on the input evaluates to true.

To import and use `whileInput` from the "Schedule" module:

```ts
import * as Schedule from '@effect/io/Schedule'

// Can be accessed like this
Schedule.whileInput
```

**Signature**

```ts
export declare const whileInput: {
  <In>(f: Predicate<In>): <Env, Out>(self: Schedule<Env, In, Out>) => Schedule<Env, In, Out>
  <Env, In, Out>(self: Schedule<Env, In, Out>, f: Predicate<In>): Schedule<Env, In, Out>
}
```
