# addDelay

Returns a new schedule with the given delay added to every interval defined
by this schedule.

To import and use `addDelay` from the "Schedule" module:

```ts
import * as Schedule from '@effect/io/Schedule'

// Can be accessed like this
Schedule.addDelay
```

**Signature**

```ts
export declare const addDelay: {
  <Out>(f: (out: Out) => Duration.Duration): <Env, In>(self: Schedule<Env, In, Out>) => Schedule<Env, In, Out>
  <Env, In, Out>(self: Schedule<Env, In, Out>, f: (out: Out) => Duration.Duration): Schedule<Env, In, Out>
}
```
