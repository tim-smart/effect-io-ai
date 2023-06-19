# map

Returns a new schedule that maps the output of this schedule through the
specified function.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const map: {
  <Out, Out2>(f: (out: Out) => Out2): <Env, In>(self: Schedule<Env, In, Out>) => Schedule<Env, In, Out2>
  <Env, In, Out, Out2>(self: Schedule<Env, In, Out>, f: (out: Out) => Out2): Schedule<Env, In, Out2>
}
```
