# whileOutput

Returns a new schedule that continues for as long the specified predicate
on the output evaluates to true.

To import and use `whileOutput` from the "Schedule" module:

```ts
import * as Schedule from '@effect/io/Schedule'

// Can be accessed like this
Schedule.whileOutput
```

**Signature**

```ts
export declare const whileOutput: {
  <Out>(f: Predicate<Out>): <Env, In>(self: Schedule<Env, In, Out>) => Schedule<Env, In, Out>
  <Env, In, Out>(self: Schedule<Env, In, Out>, f: Predicate<Out>): Schedule<Env, In, Out>
}
```
