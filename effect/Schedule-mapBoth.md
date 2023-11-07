# mapBoth

Returns a new schedule that maps both the input and output.

To import and use `mapBoth` from the "Schedule" module:

```ts
import * as Schedule from 'effect/Schedule'

// Can be accessed like this
Schedule.mapBoth
```

**Signature**

```ts
export declare const mapBoth: {
  <In, Out, In2, Out2>(options: { readonly onInput: (in2: In2) => In; readonly onOutput: (out: Out) => Out2 }): <Env>(
    self: Schedule<Env, In, Out>
  ) => Schedule<Env, In2, Out2>
  <Env, In, Out, In2, Out2>(
    self: Schedule<Env, In, Out>,
    options: { readonly onInput: (in2: In2) => In; readonly onOutput: (out: Out) => Out2 }
  ): Schedule<Env, In2, Out2>
}
```
