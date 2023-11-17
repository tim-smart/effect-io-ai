# check

Returns a new schedule that passes each input and output of this schedule
to the specified function, and then determines whether or not to continue
based on the return value of the function.

To import and use `check` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.check
```

**Signature**

```ts
export declare const check: {
  <In, Out>(test: (input: In, output: Out) => boolean): <Env>(self: Schedule<Env, In, Out>) => Schedule<Env, In, Out>
  <Env, In, Out>(self: Schedule<Env, In, Out>, test: (input: In, output: Out) => boolean): Schedule<Env, In, Out>
}
```
