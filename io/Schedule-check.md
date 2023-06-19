# check

Returns a new schedule that passes each input and output of this schedule
to the specified function, and then determines whether or not to continue
based on the return value of the function.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const check: {
  <In, Out>(test: (input: In, output: Out) => boolean): <Env>(self: Schedule<Env, In, Out>) => Schedule<Env, In, Out>
  <Env, In, Out>(self: Schedule<Env, In, Out>, test: (input: In, output: Out) => boolean): Schedule<Env, In, Out>
}
```
