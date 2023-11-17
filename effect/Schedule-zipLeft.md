# zipLeft

The same as `intersect` but ignores the right output.

To import and use `zipLeft` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.zipLeft
```

**Signature**

```ts
export declare const zipLeft: {
  <Env2, In2, Out2>(
    that: Schedule<Env2, In2, Out2>
  ): <Env, In, Out>(self: Schedule<Env, In, Out>) => Schedule<Env2 | Env, In & In2, Out>
  <Env, In, Out, Env2, In2, Out2>(
    self: Schedule<Env, In, Out>,
    that: Schedule<Env2, In2, Out2>
  ): Schedule<Env | Env2, In & In2, Out>
}
```
