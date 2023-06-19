# repeatForever

Returns a new schedule that loops this one continuously, resetting the
state when this schedule is done.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const repeatForever: (_: void) => Schedule<never, unknown, number>
```
