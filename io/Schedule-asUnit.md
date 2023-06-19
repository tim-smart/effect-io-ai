# asUnit

Returns a new schedule that maps the output of this schedule to unit.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const asUnit: <Env, In, Out>(self: Schedule<Env, In, Out>) => Schedule<Env, In, void>
```
