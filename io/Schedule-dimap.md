# dimap

Returns a new schedule that contramaps the input and maps the output.

To import and use `dimap` from the "Schedule" module:

```ts
import * as Schedule from '@effect/io/Schedule'

// Can be accessed like this
Schedule.dimap
```

**Signature**

```ts
export declare const dimap: {
  <In, Out, In2, Out2>(f: (in2: In2) => In, g: (out: Out) => Out2): <Env>(
    self: Schedule<Env, In, Out>
  ) => Schedule<Env, In2, Out2>
  <Env, In, Out, In2, Out2>(self: Schedule<Env, In, Out>, f: (in2: In2) => In, g: (out: Out) => Out2): Schedule<
    Env,
    In2,
    Out2
  >
}
```
