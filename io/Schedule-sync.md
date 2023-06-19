# sync

Returns a schedule that repeats one time, producing the specified constant
value.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const sync: <A>(evaluate: LazyArg<A>) => Schedule<never, unknown, A>
```
